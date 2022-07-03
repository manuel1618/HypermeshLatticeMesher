import unittest

from ..datastructure.node import Node


class TestNode(unittest.TestCase):
    def test_Node_Constructor(self):
        """
        Tests if the coordinates are correct
        """
        node = Node(1, (1, 2, 3))
        x = node.xyz[0]
        y = node.xyz[1]
        z = node.xyz[2]
        self.assertEqual(node.id, 1)
        self.assertEqual(x, 1.0)
        self.assertEqual(y, 2.0)
        self.assertEqual(z, 3.0)
