from typing import List
from hypermesh_lattice_mesher.datastructure.elements import (
    ConnectionType,
    Element,
    Element1D,
    ElementConfig,
)
from hypermesh_lattice_mesher.datastructure.nodes import Node
from hypermesh_lattice_mesher.importer.fem_file_reader import FEMFileReader


class ScriptBuilderFEMFile:
    """
    Class for generating the .fem file directly,
    skipping all the tcl commands in hypermesh
    """

    fem_file_lines_3D: List[str] = []
    fem_file_lines_3D_reduced: List[str] = []
    fem_file_lines_lattice: List[str] = []

    def __init__(self, fem_file_reader: FEMFileReader):
        self.fem_file_lines_3D = fem_file_reader.lines.copy()
        self.__remove_3d_nodes_and_element_lines()
        self.fem_file_lines_lattice = []

    def __remove_3d_nodes_and_element_lines(self):
        last_line_ignored = False
        for line in self.fem_file_lines_3D:
            if not self.ignore_line(line, last_line_ignored):
                self.fem_file_lines_3D_reduced.append(line)
                last_line_ignored = False
            else:
                last_line_ignored = True

    def insert_lattice_data_and_export(self, path: str):
        """
        Lazy Implementation (just the meshing is done right now)
        """
        for _, line in enumerate(self.fem_file_lines_3D_reduced):
            if "$$  GRID Data" in line:
                del self.fem_file_lines_lattice[-1]
                self.__append_nodes()
            elif "$$" in line and "Elements:" in line:
                del self.fem_file_lines_lattice[-1]
                self.__append_elements()
            elif "$HMCOMP ID " in line:
                continue
            else:
                if not line == "":
                    self.fem_file_lines_lattice.append(line)
        self.__export_lattice_fem_file(path)

    def __export_lattice_fem_file(self, path: str):
        with open(path, "w", encoding="utf-8") as file:
            for line in self.fem_file_lines_lattice:
                file.write(f"{line}")
                if not line.endswith("\n"):
                    file.write("\n")
        print(f"File written to {path}")

    def __append_nodes(self):
        """
        All noes written to file with std coordsys
        """
        self.fem_file_lines_lattice.append("$$")
        self.fem_file_lines_lattice.append("$$  GRID Data")
        self.fem_file_lines_lattice.append("$$")
        for node in Node.nodes.values():
            x = node.xyz[0]
            y = node.xyz[1]
            z = node.xyz[2]
            # GRID,1,,-10.313008308411,-7.0365853309631,-45.275356292725,
            self.fem_file_lines_lattice.append(f"GRID,{node.id_},,{x},{y},{z},")
        print("Nodes written")

    def __append_elements(self):
        """
        Creates all the rods. Property should have been set. Simple implementation
        with all rods in one component / property / beamsection / material
        """
        self.fem_file_lines_lattice.append("$$")
        self.fem_file_lines_lattice.append("$$  CROD Elements")
        self.fem_file_lines_lattice.append("$$")
        Element.create_Rod_Elements(ConnectionType["FULL"])
        for key, elements in Element1D.elements_by_property_id.items():
            self.fem_file_lines_lattice.append(f"$HMCOMP ID                     {key}")
            for rodElement in elements:
                self.fem_file_lines_lattice.append(
                    f"{rodElement.config.name},{rodElement.id_},"
                    + f"{rodElement.property_id},{rodElement.node1},{rodElement.node2},"
                )
        print("Rods written")

    def ignore_line(self, line: str, last_line_ignored: bool) -> bool:
        """
        Decides if the line is to be added to the reduced list of the class
        Parameters:
        ----------
        last_line_ignored:bool
          if the last line was ignored -follower lines will be ignored too
          (they usually start with a +)
        """
        if line.startswith("GRID"):
            return True
        for elemConfig in ElementConfig:
            if line.startswith(elemConfig.name):
                return True
        if line.startswith("$HMCOMP ID"):
            return True
        if last_line_ignored and line.startswith("+"):
            return True
        return False
