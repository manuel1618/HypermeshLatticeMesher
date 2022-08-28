from __future__ import annotations
from typing import Dict, List, Tuple


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
    def create_materials(
        cls,
        number_of_materials: int,
        lower_upper_yng: Tuple,
        nu: float,
        density: float,
    ) -> List[Material]:
        """
        Creates multiple material instancces with different yngs modules
        Parameters:
        ----------
        number_of_materials: int
          number of materials to be created
        lower_upper_yng: float
          lowest value and highest for yngs module
        nu: float
          poisson's ration for all materials
        density: float
          density for all materials

        """
        (lower_yng, upper_yng) = lower_upper_yng
        materials = [None] * number_of_materials
        delta = (abs(upper_yng) - abs(lower_yng)) / (float(number_of_materials) - 1)
        for i in range(number_of_materials):
            material = Material(f"mat_{i}")
            yngs = lower_yng + i * delta
            material.add_linear_material_properties(yngs, nu, density)
            materials[i] = material
        return materials

    @classmethod
    def reset(cls):
        """
        Resets all elements to empty list
        """
        Material.materials.clear()
        Material.counter = 1

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
