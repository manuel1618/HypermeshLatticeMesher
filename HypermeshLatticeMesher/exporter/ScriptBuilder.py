from typing import Tuple

from HypermeshLatticeMesher.exporter.HyperWorksStarter import HyperWorksStarter
from HypermeshLatticeMesher.datastructure.Node import Node
from HypermeshLatticeMesher.datastructure.Element import Element, Connection_Type


class ScriptBuilder:
    """
    Script building class (tcl) for hypermesh

    Parameters:
    ---------
    tcl_commands : List[str]
        List of all tcl commands to be executed

    """

    tcl_commands = []

    def __init__(self):
        self.tcl_commands = HyperWorksStarter.initialize_tcl_commands()

    def write_tcl_create_nodes(self):
        """
        Creates the nodes with their coordinates
        """
        for node in Node.nodes.values():
            x = node.xyz[0]
            y = node.xyz[1]
            z = node.xyz[2]
            self.tcl_commands.append(f"*createnode {x} {y} {z} 0 0 0")
            self.tcl_commands.append("*createmark nodes 1 -1")
            self.tcl_commands.append(f"*renumbersolverid nodes 1 {node.id} 1 0 0 0 0 0")


        print("Nodes written")

    def write_tcl_create_Material_Property_Component(self):
        """
        Creates all the basic components - very simmple implementation for now
        """

        material_name = "Material1"
        diameter = 0.2
        yngsMdl = 210000
        nu = 0.3
        density = 7.8e-9

        self.tcl_commands.append(
            f'*createentity mats cardimage=MAT1 includeid=0 name="{material_name}"'
        )
        self.tcl_commands.append(
            f'*setvalue mats name="{material_name}" id={{mats {1}}}'
        )
        self.tcl_commands.append(f"*setvalue mats id={1} STATUS=1 1={yngsMdl}")
        self.tcl_commands.append(f"*setvalue mats id={1} STATUS=1 3={nu}")
        self.tcl_commands.append(f"*setvalue mats id={1} STATUS=1 4={density}")
        property_name = f"property_{1}"
        self.tcl_commands.append(
            f'*createentity props cardimage=PROD includeid=0 name="{property_name}"'
        )
        self.tcl_commands.append(
            f'*setvalue props name="{property_name}" id={{props {1}}}'
        )
        self.tcl_commands.append(
            f'*createentity beamsectcols includeid=0 name="beamsectcol_{1}"'
        )
        beamsection_name = f"beamsection_{1}"
        self.tcl_commands.append(
            f'*createentity beamsects includeid=0 name="{beamsection_name}"'
        )

        self.tcl_commands.append(
            f'*setvalue beamsects name="{beamsection_name}" id={{Beamsections {1}}}'
        )
        self.tcl_commands.append(f"*setvalue beamsects id={1} beamsect_dim1={diameter}")
        self.tcl_commands.append("*clearmark beamsects 1")
        self.tcl_commands.append(f"*setvalue beamsects id={1} config=2")
        self.tcl_commands.append(f"*setvalue props id={1} materialid={{mats {1}}}")
        self.tcl_commands.append(
            f"*setvalue props id={1} STATUS=2 3179={{beamsects {1}}}"
        )
        self.tcl_commands.append(f'*createmark properties 1 "property_{1}"')
        self.tcl_commands.append("*syncpropertybeamsectionvalues 1")
        self.tcl_commands.append('*mergehistorystate "" ""')

    def write_tcl_create_rods(self):
        """
        Creates all the rods. Property should have been set. Simple implementation with all rods in one component / property / beamsection / material
        """

        self.tcl_commands.append("*setoption topofacecolor=4")
        self.tcl_commands.append("*elementtype 61 1")
        realized_connections = [Tuple]
        element: Element = None
        i = 1
        for element in Element.elements.values():
            print(f"{i} of {len(list(Element.elements.values()))} written")
            connections = element.get_Lattice_Connections(Connection_Type["FULL"])
            for connection in connections:
                if connection not in realized_connections:
                    node1 = connection[0]
                    node2 = connection[1]
                    realized_connections.append((node1, node2))
                    realized_connections.append((node2, node1))

                    self.tcl_commands.append(f'*rod {node1} {node2} "property_{1}"')
            i += 1

        print("Rods written")

    def write_tcl_save_model_and_close(self, path_to_model_file: str):
        """
        Saves the model to a .hm file
        """
        path_to_model_file = path_to_model_file.replace("\\", "/")
        self.tcl_commands.append("hm_answernext yes")
        self.tcl_commands.append(f"*writefile {path_to_model_file} 1")
        self.tcl_commands.append("*quit 1")  # for non batch
        self.tcl_commands.append("exit")  # batch
