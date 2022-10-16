import unittest

from hypermesh_lattice_mesher.datastructure.materials import Material


class TestMaterial(unittest.TestCase):
    def test_creation(self):
        material = Material("material_name")
        self.assertEqual(material.name, "material_name")
        self.assertEqual(material.id_, 1)
        self.assertEqual(len(Material.materials), 1)
        material = Material("material_name2")
        self.assertEqual(len(Material.materials), 2)
        Material.reset()
        self.assertEqual(len(Material.materials), 0)

    def test_multiple_material_creation(self):
        Material.reset()
        Material.create_materials(
            number_of_materials=2,
            lower_upper_yng=(10000, 20000),
            nu=0.3,
            density=7.85e-9,
        )
        material1: Material = Material.materials.get(1)
        self.assertEqual(10000, material1.yngs_module)
        material2: Material = Material.materials.get(2)
        self.assertEqual(20000, material2.yngs_module)

    def test_linear_material_parameters(self):
        Material.reset()
        material = Material("material_name")
        material.add_linear_material_properties(yngs_module=1, nu=2, density=3)
        self.assertEqual(material.yngs_module, 1)
        self.assertEqual(material.nu, 2)
        self.assertEqual(material.density, 3)
