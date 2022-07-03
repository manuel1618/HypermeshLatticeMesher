class Node:
    """
    Simple node implementation class modelling nodes in cartesian space
    Parameters:
    ---------
    id: int
        the id of the node
    xyz : tuple
        xyz coordinates
    """

    nodes = dict()

    def reset():
        Node.nodes.clear()

    def __init__(self, id: int, xyz: tuple) -> None:
        Node.nodes[id] = self
        self.id = id
        self.xyz = xyz
