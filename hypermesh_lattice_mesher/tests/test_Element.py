import unittest

from hypermesh_lattice_mesher.datastructure.elements import (
    ConnectionType,
    Element,
    ElementConfig,
)


class TestElement(unittest.TestCase):
    def test_elements_reset(self):
        element = Element(1, 1, ElementConfig["CHEXA"], [1, 2, 3])
        self.assertEqual(len(element.elements), 1)
        self.assertEqual(element.component_id, 1)
        Element.reset()
        self.assertEqual(len(element.elements), 0)

    def test_element_constructor(self):
        element = Element(1, 1, ElementConfig["CHEXA"], [1, 2, 3])
        self.assertEqual(element.id_, 1)
        self.assertEqual(element.component_id, 1)
        self.assertEqual(element.config, ElementConfig["CHEXA"])
        self.assertEqual(element.nodes, [1, 2, 3])

    def test_connection_Hex(self):
        element = Element(1, 1.0, ElementConfig["CHEXA"], [1, 2, 3, 4, 5, 6, 7, 8])
        connections_simple = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(len(connections_simple), 12)

        connections_full = element.get_lattice_connections(ConnectionType["FULL"])
        self.assertEqual(len(connections_full), 28)

        element = Element(
            1,
            1,
            ElementConfig["CHEXA"],
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
        )
        connections_simple = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(len(connections_simple), 24)

    def test_connection_TET(self):
        element = Element(1, 1, ElementConfig["CTETRA"], [1, 2, 3, 4])
        connections_simple = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(len(connections_simple), 6)

        element = Element(
            1, 1, ElementConfig["CTETRA"], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        )
        connections_simple = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(len(connections_simple), 12)

    def test_appendMetho(self):
        element = Element(1, 1, ElementConfig["CTETRA"], [1, 2, 3, 4])
        connections = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(connections, [(1, 2), (2, 3), (1, 3), (2, 4), (1, 4), (3, 4)])

    def test_connections_none(self):
        element = Element(1, 1, "Foo", [1, 2])
        connections = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(connections, None)
