import unittest
from hypermesh_lattice_mesher.exporter.hyperworks_starter import HyperworksStarter
from hypermesh_lattice_mesher.exporter.script_builder import ScriptBuilder
from hypermesh_lattice_mesher.datastructure.nodes import Node


class test_script_builder(unittest.TestCase):
    def test_init_optistruct(self):
        scriptBuilder = ScriptBuilder()
        self.assertEqual(
            scriptBuilder.tcl_commands,
            [
                f'*templatefileset "{HyperworksStarter.ALTAIR_HOME}/hwdesktop/templates/'
                'feoutput/optistruct/optistruct"'
            ],
        )

    def test_nodes_creation(self):
        Node.reset()
        Node(1, (1, 2, 3))
        Node(2, (3, 4, 5))
        scriptBuilder = ScriptBuilder()
        scriptBuilder.write_tcl_create_nodes()

        tcl_commands = scriptBuilder.tcl_commands
        start_index = 0
        for i, line in enumerate(tcl_commands):
            if line.startswith("*createnode"):
                start_index = i
                break
        self.assertEqual(
            tcl_commands[start_index + 0], f"*createnode {1} {2} {3} 0 0 0"
        )
        self.assertEqual(tcl_commands[start_index + 1], "*createmark nodes 1 -1")
        self.assertEqual(
            tcl_commands[start_index + 2], "*renumbersolverid nodes 1 1 1 0 0 0 0 0"
        )

        self.assertEqual(
            tcl_commands[start_index + 3], f"*createnode {3} {4} {5} 0 0 0"
        )
        self.assertEqual(tcl_commands[start_index + 4], "*createmark nodes 1 -1")
        self.assertEqual(
            tcl_commands[start_index + 5], "*renumbersolverid nodes 1 2 1 0 0 0 0 0"
        )

    def test_write_and_save(self):
        my_path = "my_path"
        scriptBuilder = ScriptBuilder()
        scriptBuilder.write_tcl_save_model_and_close(my_path)
        tcl_commands = scriptBuilder.tcl_commands
        start_index = 0
        for i, line in enumerate(tcl_commands):
            if line.startswith("hm_answernext"):
                start_index = i
                break

        self.assertEqual(tcl_commands[start_index], "hm_answernext yes")
        self.assertEqual(tcl_commands[start_index + 1], f"*writefile {my_path} 1")
        self.assertEqual(tcl_commands[start_index + 2], "*quit 1")
        self.assertEqual(tcl_commands[start_index + 3], "exit")
