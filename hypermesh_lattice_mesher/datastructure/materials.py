from __future__ import annotations
from typing import Dict


class Material:
    """
    Simple Material implementation which can be used fo the rods
    """

    counter = 1
    materials: Dict(int, "Material") = {}

    def __init__(self, name: str):
        """
        Simple Constructor
        Parameters:
        ----------
        name: name for the material

        """
        self.name = name
        self.id_ = Material.counter
        self.yngs_module = None
        self.nu = None
        self.density = None
        Material.counter += 1
        Material.materials[self.id_] = self

    @classmethod
    def reset(cls):
        """
        Resets all elements to empty list
        """
        Material.materials.clear()

    def add_linear_material_properties(
        self, yngs_module: float, nu: float, density: float
    ) -> None:

        """
        Adds mat1 parameters for structural analysis
        Parameters
        ---------
        yngs_module:float
        Youngs Module in MPa
        nu:float
        poissons ration
        density:float
        Density in t/mm^3
        """
        self.yngs_module = yngs_module
        self.nu = nu
        self.density = density
