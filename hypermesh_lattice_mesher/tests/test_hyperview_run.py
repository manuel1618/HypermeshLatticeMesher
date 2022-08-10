import unittest
import os
from hypermesh_lattice_mesher.exporter.hyperworks_starter import HyperworksStarter
from hypermesh_lattice_mesher.exporter.script_builder_hyperview import (
    ScriptBuilderHyperview,
)

path_h3d_file = os.getcwd() + "\\hypermesh_lattice_mesher\\data\\test\\model1.h3d"
path_output_dir = os.getcwd() + "\\hypermesh_lattice_mesher\\data\\test\\output"
path_output_file = (
    os.getcwd() + "\\hypermesh_lattice_mesher\\data\\test\\output\\output.txt"
)


class TestHyperviewRun(unittest.TestCase):
    def test_hyperview_run_stress(self):
        scriptBuilder = ScriptBuilderHyperview(path_output_dir)
        scriptBuilder.write_tcl_read_rod_stress(path_h3d_file)

        hyperworksStarter = HyperworksStarter(path_output_dir, "test_model")
        HyperworksStarter.initialize_tcl_commands_hyperview()
        hyperworksStarter.write_script(
            scriptBuilder.tcl_commands,
            path_output_dir,
            False,
            "",
        )

        hyperworksStarter.runHyperview(True, True)  # can be deactivated for time

        maxValue: float = 0.0
        with open(path_output_file, "r", encoding="utf-8") as f:
            lines = f.readlines()
            for _, line in enumerate(lines):

                value = line.split(",")[1]
                try:
                    value = float(value)
                except ValueError:
                    continue
                if float(value) > maxValue:
                    maxValue = float(value)

        self.assertTrue(len(lines) == 1463)
        self.assertEqual(maxValue, 21.54)

    def test_hyperview_run_disp(self):
        scriptBuilder = ScriptBuilderHyperview(path_output_dir)
        scriptBuilder.write_tcl_read_node_displacements(path_h3d_file)

        hyperworksStarter = HyperworksStarter(path_output_dir, "test_model")
        HyperworksStarter.initialize_tcl_commands_hyperview()
        hyperworksStarter.write_script(
            scriptBuilder.tcl_commands,
            path_output_dir,
            False,
            "",
        )

        hyperworksStarter.runHyperview(True, True)  # can be deactivated for time

        maxValue: float = 0.0
        with open(path_output_file, "r", encoding="utf-8") as f:
            lines = f.readlines()
            for _, line in enumerate(lines):

                value = line.split(",")[1]
                try:
                    value = float(value)
                except ValueError:
                    continue
                if float(value) > maxValue:
                    maxValue = float(value)

        self.assertTrue(len(lines) == 177)
        self.assertEqual(maxValue, 0.03254)
