import unittest

from unittest.mock import patch, mock_open
from ..datastructure.Element import Element
from ..datastructure.Node import Node

from ..importer.FemFileReader import FEMFileReader
from textwrap import dedent


class Test_FEMFileReader(unittest.TestCase):

    DATA_NODES = dedent(
        """
    GRID,1,,-10.313008308411,-7.0365853309631,-45.275356292725,
    """
    ).strip()

    DATA_NODES_NO_E = dedent(
        """
    GRID,135,,7.62-2,35.96-3,-94.39-4,
    """
    ).strip()

    DATA_ELEMENT_HEX8 = dedent(
        """
    CHEXA,75,0,149,155,156,150,151,157,
    +,158,152,
    """
    ).strip()

    DATA_ELEMENT_HEX20 = dedent(
        """
    CHEXA,37,0,40,42,16,17,63,64,
    +,65,66,348,257,256,261,349,356,
    +,258,263,434,439,443,435,
    """
    ).strip()

    DATA_ELEMENT_TET4 = dedent(
        """
    CTETRA,1,0,1,2,3,4,
    """
    ).strip()

    DATA_ELEMENT_TET10 = dedent(
        """
    CTETRA,1,0,1,2,3,4,5,6,
    +,7,8,9,10,
    """
    ).strip()

    @patch("builtins.open", mock_open(read_data=DATA_NODES))
    def test_read_nodes(self):
        """
        Simple test for reading in one node with the coordinates
        """
        Node.reset()
        self.assertEqual(len(list(Node.nodes.values())), 0)
        FEMFileReader("")
        self.assertEqual(len(list(Node.nodes.values())), 1)
        node = list(Node.nodes.values())[0]
        self.assertEqual(node.id, 1)
        self.assertEqual(node.xyz[0], -10.313008308411)
        self.assertEqual(node.xyz[1], -7.0365853309631)
        self.assertEqual(node.xyz[2], -45.275356292725)

    @patch("builtins.open", mock_open(read_data=DATA_NODES_NO_E))
    def test_read_nodes_neE(self):
        """
        Simple test for reading in one node with the coordinates
        """
        Node.reset()
        self.assertEqual(len(list(Node.nodes.values())), 0)
        FEMFileReader("")
        self.assertEqual(len(list(Node.nodes.values())), 1)
        node = list(Node.nodes.values())[0]
        self.assertEqual(node.id, 135)
        self.assertEqual(node.xyz[0], 0.0762)
        self.assertEqual(node.xyz[1], 0.03596)
        self.assertEqual(node.xyz[2], -0.009439)

    @patch("builtins.open", mock_open(read_data=DATA_ELEMENT_HEX8))
    def test_read_elements_hex8(self):
        Element.reset()
        self.assertEqual(len(list(Element.elements.values())), 0)
        FEMFileReader("")
        self.assertEqual(len(list(Element.elements.values())), 1)
        element = list(Element.elements.values())[0]
        self.assertEqual(element.id, 75)
        self.assertEqual(element.config, "CHEXA")
        self.assertEqual(len(element.nodes), 8)
        self.assertEqual(
            element.nodes,
            [149, 155, 156, 150, 151, 157, 158, 152],
        )

    @patch("builtins.open", mock_open(read_data=DATA_ELEMENT_HEX20))
    def test_read_elements_hex20(self):
        Element.reset()
        self.assertEqual(len(list(Element.elements.values())), 0)
        FEMFileReader("")
        self.assertEqual(len(list(Element.elements.values())), 1)
        element = list(Element.elements.values())[0]
        self.assertEqual(element.id, 37)
        self.assertEqual(element.config, "CHEXA")
        self.assertEqual(len(element.nodes), 20)
        self.assertEqual(
            element.nodes,
            [
                40,
                42,
                16,
                17,
                63,
                64,
                65,
                66,
                348,
                257,
                256,
                261,
                349,
                356,
                258,
                263,
                434,
                439,
                443,
                435,
            ],
        )

    @patch("builtins.open", mock_open(read_data=DATA_ELEMENT_TET4))
    def test_read_elements_tet4(self):
        Element.reset()
        self.assertEqual(len(list(Element.elements.values())), 0)
        FEMFileReader("")
        self.assertEqual(len(list(Element.elements.values())), 1)
        element = list(Element.elements.values())[0]
        self.assertEqual(element.id, 1)
        self.assertEqual(element.config, "CTETRA")
        self.assertEqual(len(element.nodes), 4)
        self.assertEqual(
            element.nodes,
            [
                1,
                2,
                3,
                4,
            ],
        )

    @patch("builtins.open", mock_open(read_data=DATA_ELEMENT_TET10))
    def test_read_elements_tet10(self):
        Element.reset()
        self.assertEqual(len(list(Element.elements.values())), 0)
        FEMFileReader("")
        self.assertEqual(len(list(Element.elements.values())), 1)
        element = list(Element.elements.values())[0]
        self.assertEqual(element.id, 1)
        self.assertEqual(element.config, "CTETRA")
        self.assertEqual(len(element.nodes), 10)
        self.assertEqual(
            element.nodes,
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        )
