from typing import List
import re
from hypermesh_lattice_mesher.datastructure.nodes import Node
from hypermesh_lattice_mesher.datastructure.elements import (
    Element,
    Element1D,
    ElementConfig,
)


class FEMFileReader:
    """
    Class for importing data from a .fem file and creating
    datastructure entities to be used later on

    Parameters:
    ---------
    path_to_file : str
        Path to the .fem file which should be read
    """

    def __init__(self, path_to_file: str) -> None:
        Element.reset()
        Element1D.reset()
        Node.reset()
        self.lines = []
        with open(path_to_file, "r", encoding="utf-8") as file:
            for line in file.readlines():
                self.lines.append(line)

        self.read_nodes()
        self.read_elements()

    def read_nodes(self):
        """
        Reads and creates all the Nodes from the .fem file in the datastructure
        """
        # sampleline: "GRID,1,,-10.313008308411,-7.0365853309631,-45.275356292725,"
        for _, line in enumerate(self.lines):
            if "," in line:
                line_content = line.split(",")
                if line_content[0] == "GRID":
                    id_ = int(line_content[1])
                    x = self.convertToFloat(line_content[3])
                    y = self.convertToFloat(line_content[4])
                    z = self.convertToFloat(line_content[5])
                    Node(id_, (x, y, z))
        print("Nodes loaded")

    def convertToFloat(self, number: str) -> float:
        """
        Small helper method to convert to float.
        Inserts E if it is left out (option in Hypermesh)
        """
        # insert left out E in some notations
        if "-" in number[1:] and "E" not in number[:]:
            number = number[0] + number[1:].replace("-", "E-")
        return float(number)

    def read_elements(self):
        """
        Reads and creates all elements from the .fem File in the datastructure
        """
        # sampleline: "CHEXA,31,0,25,28,23,24,45,46, <new line> +,47,48,
        component_id = 0
        for i, line in enumerate(self.lines):
            if "$HMCOMP ID" in line:
                component_id = int(re.sub(r"\s+", ";", line).split(";")[2])

            if "," in line:
                line_content = line.split(",")

                if is_element(line_content):
                    id_ = int(line_content[1])
                    config = ElementConfig[line_content[0]]
                    nodes = []
                    for j in range(3, len(line_content) - 1):
                        nodes.append(int(line_content[j]))
                    while len(self.lines) > i + 1:
                        if self.lines[i + 1][0] != "+":
                            break
                        i += 1
                        line = self.lines[i]
                        line_content = line.split(",")
                        for j in range(1, len(line_content) - 1):
                            nodes.append(int(line_content[j]))

                    Element(id_, component_id, config, nodes)


def is_element(line_content: List[str]):
    """
    Checks if the line contains any of the known
    element configss
    """
    return line_content[0] in ElementConfig.__members__
