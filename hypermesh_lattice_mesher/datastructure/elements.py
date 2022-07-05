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
    id_: int
        the id of the element
    config : str
        config for the element
    nodes : List[Integer]
        List of node Ids belonging to the element
    """

    elements: Dict(int, "Element") = {}

    def __init__(self, id_: int, config: str, nodes: List[int]) -> None:
        """
        Initializes the element with the above mentioned parameters
        """
        Element.elements[id_] = self
        self.id_ = id_
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
            self.__append_connection(connections, [0, 1, 2, 3], True)
            # top
            self.__append_connection(connections, [4, 5, 6, 7], True)
            # vertical1
            self.__append_connection(connections, [0, 1, 5, 4], True)
            self.__append_connection(connections, [2, 3, 7, 6], True)

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

            # FULL
            # bottom
            self.__append_connection(connections, [0, 8, 1, 9, 2, 10, 3, 11], True)
            # top
            self.__append_connection(connections, [4, 16, 5, 17, 6, 18, 7, 19], True)
            # vertical
            self.__append_connection(connections, [0, 8, 1, 13, 5, 16, 4, 12], True)
            self.__append_connection(connections, [2, 10, 3, 15, 7, 18, 6, 14], True)

            if connection_type == ConnectionType["FULL"]:
                # TODO
                pass

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
            self.__append_connection(connections, [0, 1, 2], True)
            self.__append_connection(connections, [0, 1, 3], True)
            self.__append_connection(connections, [1, 2, 3], True)
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

    def __append_connection(
        self, connections: List[Tuple], node_ids: List, closed: bool
    ) -> List[Tuple]:
        """
        Helper method to reduce text in this module

        Parameters:
        ---------
        connections:List[Tuple]
          List of the connections which is used to append
        node_ids:List[Integer]
          List of node pairs in order how the edges should be appeneded
        closed:bool
          Decide wheter the connection is a closed loop

        Returns:
        ---------
        connections:List[Tuple]
          The List with appended connections
        """
        for i, n_id in enumerate(node_ids):
            if i == len(node_ids) - 1:
                if closed:
                    node1 = min(self.nodes[n_id], self.nodes[node_ids[0]])
                    node2 = max(self.nodes[n_id], self.nodes[node_ids[0]])
                    if (node1, node2) not in connections:
                        connections.append((node1, node2))
                else:
                    break
            else:
                node1 = min(self.nodes[n_id], self.nodes[node_ids[i + 1]])
                node2 = max(self.nodes[n_id], self.nodes[node_ids[i + 1]])
                if (node1, node2) not in connections:
                    connections.append((node1, node2))
