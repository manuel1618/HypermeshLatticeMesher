import math
from HypermeshLatticeMesher.datastructure.Node import Node
from HypermeshLatticeMesher.datastructure.Element import Element
from typing import List


class FEMFileReader:
    """ """

    def __init__(self, path_to_file: str) -> None:
        """
        initialize the reader and take the lines
        Parameters:
        ---------
        path_to_file:str
          This points to the .disp file which is read
        """
        self.lines = []
        with open(path_to_file) as file:
            for line in file.readlines():
                self.lines.append(line)

        self.read_nodes()
        self.read_elements()

    def read_nodes(self):
        # sampleline: "GRID,1,,-10.313008308411,-7.0365853309631,-45.275356292725,"
        for i in range(0, len(self.lines)):
            line = self.lines[i]
            if "," in line:
                lineSplit = line.split(",")
                if lineSplit[0] == "GRID":
                    id = lineSplit[1]
                    x = float(lineSplit[3])
                    y = float(lineSplit[4])
                    z = float(lineSplit[5])
                    Node(id, (x, y, z))

    def read_elements(self):
        """
        Reads in all elements in the .fem File
        """
        # sampleline: "CHEXA,31,0,25,28,23,24,45,46, <new line> +,47,48,
        for i in range(0, len(self.lines)):
            line = self.lines[i]

            if "," in line:
                lineSplit = line.split(",")
                if lineSplit[0] == "CHEXA":
                    id = int(lineSplit[1])
                    config = lineSplit[0]
                    nodes = []
                    for j in range(3, len(lineSplit) - 1):
                        nodes.append(int(lineSplit[j]))
                    while self.lines[i + 1][0] == "+":
                        i += 1
                        line = self.lines[i]
                        lineSplit = line.split(",")
                        for j in range(1, len(lineSplit) - 1):
                            nodes.append(int(lineSplit[j]))

                    Element(id, config, nodes)


if __name__ == "__main__":

    """
    Local Testing only
    """
    reader = FEMFileReader(
        r"D:\GITHUB\HypermeshLatticeMesher\.git\HypermeshLatticeMesher\HypermeshLatticeMesher\data\femFiles\smallModel.fem"
    )

    print(len(Node.nodes))
    print(len(Element.elements))
    print(len(Element.elements.get(33).nodes))
