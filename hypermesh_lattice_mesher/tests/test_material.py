import unittest

from hypermesh_lattice_mesher.datastructure.materials import Material


class TestMaterial(unittest.TestCase):
    def test_creation(self):

        material = Material("material_name")
        self.assertEqual(material.name, "material_name")
        self.assertEqual(material.id_, 1)
        self.assertEqual(len(Material.materials), 1)
        Material.reset()
        self.assertEqual(len(Material.materials), 0)

    def test_linear_material_parameters(self):
        material = Material("material_name")
        material.add_linear_material_properties(yngs_module=1, nu=2, density=3)
        self.assertEqual(material.yngs_module, 1)
        self.assertEqual(material.nu, 2)
        self.assertEqual(material.density, 3)
