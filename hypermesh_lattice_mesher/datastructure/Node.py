class Node:
    """
    Simple node implementation class modelling nodes in cartesian coordinates

    """

    nodes = {}

    @classmethod
    def reset(cls):
        """
        Resets all nodes to an empty lists
        """
        Node.nodes.clear()

    def __init__(self, identifier: int, xyz: tuple) -> None:
        """
        Parameters:
        ---------
        id: int
            the id of the node
        xyz : tuple
            xyz coordinates

        Returns_
        ---------
        None
        """
        Node.nodes[id] = self
        self.id = identifier
        self.xyz = xyz

    def get_id(self):
        """
        Returns the id of the node
        """
        return self.id
