from enum import Enum
from typing import List, Tuple


class Connection_Type(Enum):
    SIMPLE = 1
    FULL = 2


class Element:

    """
    Simple element implementation class modelling hex elements (1st order)
    Parameters:
    ---------
    id: int
        the id of the element
    config : id
        config for the element
    nodes : List[Integer]
        List of node Ids belonging to the element
    """

    elements = dict()

    def __init__(self, id: int, config: str, nodes: List[int]) -> None:
        Element.elements[id] = self
        self.id = id
        self.config = config
        self.nodes = nodes

    def get_Lattice_Connections(self, connectionType: Connection_Type) -> List[Tuple]:
        if self.config == "CHEXA" and len(self.nodes) == 8:
            connections = []
            # bottom
            connections.append((self.nodes[0], self.nodes[1]))
            connections.append((self.nodes[1], self.nodes[2]))
            connections.append((self.nodes[2], self.nodes[3]))
            connections.append((self.nodes[3], self.nodes[1]))
            # top
            connections.append((self.nodes[4], self.nodes[5]))
            connections.append((self.nodes[5], self.nodes[6]))
            connections.append((self.nodes[6], self.nodes[7]))
            connections.append((self.nodes[7], self.nodes[4]))
            # vertical
            connections.append((self.nodes[0], self.nodes[4]))
            connections.append((self.nodes[1], self.nodes[5]))
            connections.append((self.nodes[2], self.nodes[6]))
            connections.append((self.nodes[3], self.nodes[7]))

            # FULL
            if connectionType == Connection_Type["FULL"]:
                # cross bottom and top
                connections.append((self.nodes[0], self.nodes[2]))
                connections.append((self.nodes[1], self.nodes[3]))
                connections.append((self.nodes[4], self.nodes[6]))
                connections.append((self.nodes[5], self.nodes[7]))
                # cross front back
                connections.append((self.nodes[0], self.nodes[7]))
                connections.append((self.nodes[3], self.nodes[4]))
                connections.append((self.nodes[1], self.nodes[6]))
                connections.append((self.nodes[2], self.nodes[5]))
                # cross sides
                connections.append((self.nodes[0], self.nodes[5]))
                connections.append((self.nodes[1], self.nodes[4]))
                connections.append((self.nodes[3], self.nodes[6]))
                connections.append((self.nodes[2], self.nodes[7]))

            return connections
