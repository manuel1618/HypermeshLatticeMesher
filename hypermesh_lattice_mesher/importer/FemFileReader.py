import os
from ..datastructure.Node import Node
from ..datastructure.Element import Element


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
        self.lines = []
        with open(path_to_file, "r") as file:
            for line in file.readlines():
                self.lines.append(line)

        self.read_nodes()
        self.read_elements()

    def read_nodes(self):
        """
        Reads and creates all the Nodes from the .fem file in the datastructure
        """
        # sampleline: "GRID,1,,-10.313008308411,-7.0365853309631,-45.275356292725,"
        for i in range(0, len(self.lines)):
            line = self.lines[i]
            if "," in line:
                lineSplit = line.split(",")
                if lineSplit[0] == "GRID":
                    id = int(lineSplit[1])
                    x = self.convertToFloat(lineSplit[3])
                    y = self.convertToFloat(lineSplit[4])
                    z = self.convertToFloat(lineSplit[5])
                    Node(id, (x, y, z))
        print("Nodes loaded")

    def convertToFloat(self, input: str) -> float:
        """
        Small helper method to convert to float. Inserts E if it is left out (option in Hypermesh)
        """
        # insert left out E in some notations
        if "-" in input[1:] and "E" not in input[:]:
            input = input[0] + input[1:].replace("-", "E-")
        return float(input)

    def read_elements(self):
        """
        Reads and creates all elements from the .fem File in the datastructure
        """
        # sampleline: "CHEXA,31,0,25,28,23,24,45,46, <new line> +,47,48,
        for i in range(0, len(self.lines)):
            line = self.lines[i]

            if "," in line:
                lineSplit = line.split(",")
                if lineSplit[0] == "CHEXA" or lineSplit[0] == "CTETRA":
                    id = int(lineSplit[1])
                    config = lineSplit[0]
                    nodes = []
                    for j in range(3, len(lineSplit) - 1):
                        nodes.append(int(lineSplit[j]))
                    if len(self.lines) > i + 1:
                        while self.lines[i + 1][0] == "+":
                            i += 1
                            line = self.lines[i]
                            lineSplit = line.split(",")
                            for j in range(1, len(lineSplit) - 1):
                                nodes.append(int(lineSplit[j]))
                            if i == len(self.lines) - 1:  # eof fix
                                break
                    Element(id, config, nodes)

        print("Elements loaded")


if __name__ == "__main__":

    """
    Local Testing only
    """
    path_fem_file = (
        os.getcwd().replace("\\", "/")
        + "/HypermeshLatticeMesher/data/femFiles/smallModelTet.fem"
    )
    reader = FEMFileReader(path_fem_file)

    print(len(Node.nodes))
    print(len(Element.elements))
    print(len(list(Element.elements.values())[0].nodes))
