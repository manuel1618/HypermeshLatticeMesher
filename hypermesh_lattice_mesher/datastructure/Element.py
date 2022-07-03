"""
3D Implmenting Class with connections (lattice)
"""


from __future__ import annotations
from enum import Enum
from typing import List, Tuple, Dict


class ConnectionType(Enum):
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

    elements: Dict(int, "Element") = {}

    def __init__(self, identifier: int, config: str, nodes: List[int]) -> None:
        """
        Initializes the element with the above mentioned parameters
        """
        Element.elements[id] = self
        self.id = identifier
        self.config = config
        self.nodes = nodes

    @classmethod
    def reset(cls):
        """
        Resets all elements to empty list
        """
        Element.elements.clear()

    def get_lattice_connections(self, connection_type: ConnectionType) -> List[Tuple]:
        """
        Gets the lattice connection from different Element Configs

        Parameters:
        ---------
        connectionType: ConnectionType
            how many connections should be returned
        --------
        returns: -> List[Tuple] of the connections pairs (node ids)
        """

        if self.config == "CHEXA":
            return self.__get_lattice_connections_hex(connection_type)
        if self.config == "CTETRA":
            return self.__get_lattice_connections_tet(connection_type)
        return None

    def __get_lattice_connections_hex(
        self, connection_type: ConnectionType
    ) -> List[Tuple]:
        """
        Private Method for getting Hex Lattice Connections
        """

        connections = []
        if len(self.nodes) == 8:
            # bottom
            connections.append((self.nodes[0], self.nodes[1]))
            connections.append((self.nodes[1], self.nodes[2]))
            connections.append((self.nodes[2], self.nodes[3]))
            connections.append((self.nodes[3], self.nodes[0]))
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
            if connection_type == ConnectionType["FULL"]:
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

        if len(self.nodes) == 20:
            # TODO
            # - implement 2nd order Connections

            return connections

        print("Unknown element type: " + self.config)
        print(f"Number Of Nodes: {len(self.nodes)}")
        return None

    def __get_lattice_connections_tet(
        self, connection_type: ConnectionType
    ) -> List[Tuple]:
        """
        Private Method for getting Tetra Lattice Connections
        """
        connections = []
        if len(self.nodes) == 4:
            connections.append((self.nodes[0], self.nodes[1]))
            connections.append((self.nodes[1], self.nodes[2]))
            connections.append((self.nodes[2], self.nodes[0]))
            connections.append((self.nodes[3], self.nodes[0]))
            connections.append((self.nodes[3], self.nodes[1]))
            connections.append((self.nodes[3], self.nodes[2]))
            if connection_type == ConnectionType["FULL"]:
                # not implemented yet # TODO
                pass

        if len(self.nodes) == 10:
            # basis
            connections.append((self.nodes[0], self.nodes[4]))
            connections.append((self.nodes[4], self.nodes[1]))
            connections.append((self.nodes[1], self.nodes[5]))
            connections.append((self.nodes[5], self.nodes[2]))
            connections.append((self.nodes[2], self.nodes[6]))
            connections.append((self.nodes[6], self.nodes[0]))
            # heights
            connections.append((self.nodes[0], self.nodes[7]))
            connections.append((self.nodes[7], self.nodes[3]))
            connections.append((self.nodes[1], self.nodes[8]))
            connections.append((self.nodes[8], self.nodes[3]))
            connections.append((self.nodes[2], self.nodes[9]))
            connections.append((self.nodes[9], self.nodes[3]))
            if connection_type == ConnectionType["FULL"]:
                # not implemented yet #TODO
                pass
        return connections
