import unittest

from hypermesh_lattice_mesher.datastructure.element import ConnectionType, Element


class TestElement(unittest.TestCase):
    def test_element_constructor(self):
        element = Element(1, "config", [1, 2, 3])
        self.assertEqual(element.id_, 1)
        self.assertEqual(element.config, "config")
        self.assertEqual(element.nodes, [1, 2, 3])

    def test_connection_Hex8(self):
        element = Element(1, "CHEXA", [1, 2, 3, 4, 5, 6, 7, 8])
        connections_simple = element.get_lattice_connections(ConnectionType["SIMPLE"])
        self.assertEqual(len(connections_simple), 12)

        connections_full = element.get_lattice_connections(ConnectionType["FULL"])
        self.assertEqual(len(connections_full), 28)

    def test_connection_Hex20(self):
        pass
