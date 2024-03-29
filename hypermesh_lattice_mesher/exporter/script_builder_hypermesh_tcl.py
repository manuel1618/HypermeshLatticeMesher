from typing import Dict, List
from hypermesh_lattice_mesher.datastructure.nodes import Node
from hypermesh_lattice_mesher.datastructure.elements import Element, ConnectionType
from hypermesh_lattice_mesher.datastructure.materials import Material
from .hyperworks_starter import HyperworksStarter


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
        self.tcl_commands = HyperworksStarter.initialize_tcl_commands()

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
            self.tcl_commands.append(
                f"*renumbersolverid nodes 1 {node.id_} 1 0 0 0 0 0"
            )

        print("Nodes written")

    def write_tcl_create_materials_properties(
        self, materials: List[Material], diameter: float
    ):
        """
        Create multiple materials and properties
        """
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

        for material in materials:
            material_name = f"mat_{material.id_}"
            yngsMdl = material.yngs_module
            nu = material.nu
            density = material.density
            self.tcl_commands.append(
                f'*createentity mats cardimage=MAT1 includeid=0 name="{material_name}"'
            )
            self.tcl_commands.append(
                f'*setvalue mats name="{material_name}" id={material.id_}'
            )
            self.tcl_commands.append(
                f"*setvalue mats id={material.id_} STATUS=1 1={yngsMdl}"
            )
            self.tcl_commands.append(
                f"*setvalue mats id={material.id_} STATUS=1 3={nu}"
            )
            self.tcl_commands.append(
                f"*setvalue mats id={material.id_} STATUS=1 4={density}"
            )
            property_name = f"property_{material.id_}"
            self.tcl_commands.append(
                f'*createentity props cardimage=PROD includeid=0 name="{property_name}"'
            )
            self.tcl_commands.append(
                f'*setvalue props name="{property_name}" id={material.id_}'
            )

            self.tcl_commands.append(
                f"*setvalue props id={material.id_} materialid={material.id_}"
            )
            self.tcl_commands.append(
                f"*setvalue props id={material.id_} STATUS=2 3179={{beamsects {1}}}"
            )
            self.tcl_commands.append(
                f'*createmark properties 1 "property_{material.id_}"'
            )
            self.tcl_commands.append("*syncpropertybeamsectionvalues 1")
            self.tcl_commands.append('*mergehistorystate "" ""')

    def write_tcl_create_Material_Property_Component(
        self, material: Material, diameter: float
    ):
        """
        Creates all the basic components - very simmple implementation for now
        """

        material_name = "Material1"
        yngsMdl = material.yngs_module
        nu = material.nu
        density = material.density

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
        Creates all the rods. Property should have been set. Simple implementation
        with all rods in one component / property / beamsection / material
        """

        self.tcl_commands.append("*setoption topofacecolor=4")
        self.tcl_commands.append("*elementtype 61 1")
        element: Element = None
        connections_per_element = 1

        allElements = Element.elements.values()
        numberOfElements = len(allElements)

        all_connections_to_realize = set()
        for element in allElements:
            connections = element.get_lattice_connections(ConnectionType["FULL"])
            if connections_per_element == 1:
                connections_per_element = len(connections)
            for connection in connections:
                all_connections_to_realize.add((min(connection), max(connection)))

        print(f"Writing {numberOfElements} elements to list")
        for connection in all_connections_to_realize:
            self.tcl_commands.append(
                f'*rod {min(connection)} {max(connection)} "property_{1}"'
            )

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

    def write_tcl_import_fem_file(self, path_to_fem_file):
        """
        Imports a given .fem file
        """
        path_to_fem_file = path_to_fem_file.replace("\\", "/")
        self.tcl_commands.append(
            '*createstringarray 13 "OptiStruct " " " "ASSIGNPROP_BYHMCOMMENTS " '
            '"CREATE_PART_HIERARCHY" \\'
        )
        self.tcl_commands.append(
            '"IMPORT_MATERIAL_METADATA" "ANSA " "PATRAN " "EXPAND_IDS_FOR_FORMULA_SETS " \\'
        )
        self.tcl_commands.append(
            '"CONTACTSURF_DISPLAY_SKIP " "LOADCOLS_DISPLAY_SKIP " "SYSTCOLS_DISPLAY_SKIP " \\'
        )
        self.tcl_commands.append('"VECTORCOLS_DISPLAY_SKIP " "\\[DRIVE_MAPPING= \\]"')
        self.tcl_commands.append(
            f'*feinputwithdata2 "\\#optistruct\\\\optistruct" "{path_to_fem_file}"'
            " 0 0 0 0 0 1 13 1 0"
        )

    def write_tcl_update_rod_properties(self, porperty_to_elem_ids: Dict):
        """
        Updates properties according to input dictionary - used for updating according
        to stress values for optimization
        """
        for property_name, elem_ids in porperty_to_elem_ids.items():
            ids = " ".join(elem_ids)
            self.tcl_commands.append(f"*createmark elems 1 {ids}")
            self.tcl_commands.append(f'*rodupdate 1 "{property_name}"')
