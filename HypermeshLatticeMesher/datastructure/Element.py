from numpy import array
from typing import List



class Element:
    """
    Simple element implementation class modelling hex elements (1st order)
    Parameters:
    ---------
    id: int
        the id of the element
    config : id
        config for the element
    nodes : List[Integer]
        List of node Ids belonging to the element
    """

    elements = []

    def __init__(self, id: int, nodes: List[int]) -> None:
        Element.elements.append(self)
        self.id = id
        self.nodes = nodes
