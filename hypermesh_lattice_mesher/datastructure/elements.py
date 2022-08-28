"""
3D Implmenting Class with connections (lattice)
"""


from __future__ import annotations
from enum import Enum
from typing import List, Set, Tuple, Dict


class ConnectionType(Enum):
    """
    Depending on the user wish, different connection types can be realized.
    Currently implementd:
        simple: only straight edges (no crosses)
        full: every connection
    """

    SIMPLE = 1
    FULL = 2


class ElementConfig(Enum):
    """
    To simplify the process for all Element Configs, its is put in as an enumeration.
    Am able to loop for all and dont have to change the code again
    """

    CHEXA = 1
    CTETRA = 2
    CROD = 3


class Element:

    """
    Simple element implementation class modelling hex elements (1st order)
    Parameters:
    ---------
    id_: int
        the id of the element
    component_id : int
        component in which the element belongs (hypermesh component)
    config : str
        config for the element
    nodes : List[Integer]
        List of node Ids belonging to the element
    """

    elements: Dict(int, "Element") = {}
    elements_by_component_id: Dict(int, List["Element"]) = {}

    def __init__(
        self, id_: int, component_id: int, config: ElementConfig, nodes: List[int]
    ) -> None:
        """
        Initializes the element with the above mentioned parameters
        """
        Element.elements[id_] = self
        self.id_ = id_
        self.component_id = component_id
        if component_id not in Element.elements_by_component_id:
            Element.elements_by_component_id[component_id] = []
        Element.elements_by_component_id[component_id].append(self)

        self.config = config
        self.nodes = nodes

    @classmethod
    def reset(cls):
        """
        Resets all elements to empty list
        """
        Element.elements.clear()
        Element.elements_by_component_id = {}

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

        if self.config == ElementConfig["CHEXA"]:
            return self.__get_lattice_connections_hex(connection_type)
        if self.config == ElementConfig["CTETRA"]:
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
            self.__append_closed_connection(connections, [0, 1, 2, 3])
            # top
            self.__append_closed_connection(connections, [4, 5, 6, 7])
            # vertical1
            self.__append_closed_connection(connections, [0, 1, 5, 4])
            self.__append_closed_connection(connections, [2, 3, 7, 6])

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
            self.__append_closed_connection(connections, [0, 8, 1, 9, 2, 10, 3, 11])
            # top
            self.__append_closed_connection(connections, [4, 16, 5, 17, 6, 18, 7, 19])
            # vertical
            self.__append_closed_connection(connections, [0, 8, 1, 13, 5, 16, 4, 12])
            self.__append_closed_connection(connections, [2, 10, 3, 15, 7, 18, 6, 14])

            if connection_type == ConnectionType["FULL"]:
                # TODO
                pass

            return connections

        print(f"Unknown element type or number of nodes is wrong: {self.config}")
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
            self.__append_closed_connection(connections, [0, 1, 2])
            self.__append_closed_connection(connections, [0, 1, 3])
            self.__append_closed_connection(connections, [1, 2, 3])
            if connection_type == ConnectionType["FULL"]:
                # not implemented yet # TODO
                pass
            return connections

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

        print(f"Unknown element type or number of nodes is wrong: {self.config}")
        print(f"Number Of Nodes: {len(self.nodes)}")
        return None

    def __append_closed_connection(
        self, connections: List[Tuple], node_ids: List
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
                node1 = min(self.nodes[n_id], self.nodes[node_ids[0]])
                node2 = max(self.nodes[n_id], self.nodes[node_ids[0]])
                if (node1, node2) not in connections:
                    connections.append((node1, node2))
            else:
                node1 = min(self.nodes[n_id], self.nodes[node_ids[i + 1]])
                node2 = max(self.nodes[n_id], self.nodes[node_ids[i + 1]])
                if (node1, node2) not in connections:
                    connections.append((node1, node2))

    @classmethod
    def create_Rod_Elements(cls, connection_type: ConnectionType):
        """
        Creates Rod Elements based on 3D Element and connection Type
        Parameters:
        ----------
        connection_type: ConnectionType
          How the lattice Structures are to be found
        """
        for comp_id, elements in Element.elements_by_component_id.items():
            for element in elements:
                connections = element.get_lattice_connections(connection_type)
                for connection in connections:
                    Element1D(ElementConfig["CROD"], comp_id, connection)


class Element1D:
    """
    Class for modeling 1D elements - RODs for now
    """

    id_ = 0
    id_counter = 1
    elements: Dict(int, "Element1D") = {}
    elements_by_property_id: Dict(int, List["Element1D"]) = {}
    node_pairs: Set(Tuple) = set()

    def __init__(self, config: ElementConfig, property_id: int, nodes: Tuple) -> str:

        self.config = config
        self.id_ = Element1D.id_counter
        self.property_id = property_id
        self.node1 = min(nodes)
        self.node2 = max(nodes)

        if (self.node1, self.node2) not in Element1D.node_pairs:
            Element1D.elements[self.id_] = self
            Element1D.id_counter += 1
            connection = (self.node1, self.node2)
            Element1D.node_pairs.add(connection)

        if property_id not in Element1D.elements_by_property_id:
            Element1D.elements_by_property_id[property_id] = []
        Element1D.elements_by_property_id[property_id].append(self)

    @classmethod
    def reset(cls):
        """
        Resets all elements to empty list
        """
        Element1D.elements.clear()
        Element1D.elements_by_property_id.clear()
        Element1D.node_pairs.clear()
        Element1D.id_counter = 1

    def get_femFile_representation(self):
        """
        For creating the .fem file the str representation is given
        """
        # example: CROD,10,1,73,74,
        return (
            f"{self.config.name},{self.id_},{self.property_id},{self.node1}"
            f",{self.node2}"
        )
