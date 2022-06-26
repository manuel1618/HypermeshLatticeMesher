from __future__ import annotations
from enum import Enum
from typing import List, Tuple, Dict


class Connection_Type(Enum):
    """
    Depending on the user wish, different connection types can be realized.
    Currently implementd:
        simple: only straight edges (no crosses)
        full: every connection
    """

    SIMPLE = 1
    FULL = 2


class Element:

    """
    Simple element implementation class modelling hex elements (1st order)
    Parameters:
    ---------
    id: int
        the id of the element
    config : str
        config for the element
    nodes : List[Integer]
        List of node Ids belonging to the element
    """

    elements: Dict(int, "Element") = dict()

    def __init__(self, id: int, config: str, nodes: List[int]) -> None:
        Element.elements[id] = self
        self.id = id
        self.config = config
        self.nodes = nodes

    def reset():
        Element.elements.clear()

    def get_Lattice_Connections(self, connectionType: Connection_Type) -> List[Tuple]:
        """
        Gets the lattice connection from different Element Configs (CHEXA 1st order)

        Parameters:
        ---------
        connectionType: Connection_Type
            how many connections should be returned
        --------
        returns: -> List[Tuple] of the connections pairs (node ids)
        """

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
                # inner cross
                connections.append((self.nodes[0], self.nodes[6]))
                connections.append((self.nodes[3], self.nodes[5]))
                connections.append((self.nodes[4], self.nodes[2]))
                connections.append((self.nodes[7], self.nodes[1]))

            return connections

        elif self.config == "CHEXA" and len(self.nodes) == 20:
            connections = []

            # TODO
            # - implement 2nd order Connections

            return connections

        else:
            print("Unknown element type: " + self.config)
            print(f"Number Of Nodes: {len(self.nodes)}")
            return None
