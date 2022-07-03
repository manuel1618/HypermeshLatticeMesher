"""
Hyperview Script Module
"""


from hypermesh_lattice_mesher.exporter.hyperworks_starter import HyperworksStarter


class ScriptBuilderHyperview:
    """
    Script building class (tcl) for hypermesh

    Parameters:
    ---------
    tcl_commands : List[str]
        List of all tcl commands to be executed

    """

    tcl_commands = []

    def __init__(self, path_to_working_dir: str):
        self.tcl_commands = []
        self.path_to_working_dir = path_to_working_dir.replace("\\", "/")

    def write_tcl_read_rod_stress(self, path_to_h3d_file: str):
        """
        Creates the hyperview Script which creates a file with elems ids\
             and their stress values
        """

        path_to_h3d_file = path_to_h3d_file.replace("\\", "/")

        self.tcl_commands.append(f"cd {  self.path_to_working_dir}")
        self.tcl_commands.append(f'set outPath "{self.path_to_working_dir}/output.txt"')
        self.tcl_commands.append(f'set import_file_path "{path_to_h3d_file}"')
        self.tcl_commands.append("hwi OpenStack")
        self.tcl_commands.append("hwi GetSessionHandle session")
        self.tcl_commands.append("session GetProjectHandle project")
        self.tcl_commands.append("project GetPageHandle page 1")
        self.tcl_commands.append("page GetWindowHandle win 1")
        self.tcl_commands.append("win SetClientType animation")
        self.tcl_commands.append("win GetClientHandle anim")
        self.tcl_commands.append("anim AddModel $import_file_path")
        self.tcl_commands.append("set id [anim AddModel $import_file_path]")
        self.tcl_commands.append("anim GetModelHandle myModel $id")
        self.tcl_commands.append("myModel SetResult $import_file_path")
        self.tcl_commands.append("anim Draw")
        self.tcl_commands.append("myModel GetResultCtrlHandle myResult")
        self.tcl_commands.append("set current [myResult GetCurrentSubcase]")
        self.tcl_commands.append(
            "myResult SetCurrentSimulation [expr [myResult GetNumberOfSimulations\
                 $current]-1]"
        )
        self.tcl_commands.append("set data_types [myResult GetDataTypeList $current]")
        self.tcl_commands.append("myResult GetContourCtrlHandle myContour")
        self.tcl_commands.append("myContour SetDataType [lindex $data_types 1]")
        self.tcl_commands.append("myContour SetEnableState true")
        self.tcl_commands.append("anim Draw")
        self.tcl_commands.append("myModel GetQueryCtrlHandle myQuery")
        self.tcl_commands.append("set set_id [myModel AddSelectionSet element]")
        self.tcl_commands.append("myModel GetSelectionSetHandle elem_set $set_id")
        self.tcl_commands.append('elem_set Add "all"')
        self.tcl_commands.append("myQuery SetSelectionSet $set_id")
        self.tcl_commands.append('myQuery SetQuery "element.id contour.value"')
        self.tcl_commands.append("myQuery WriteData $outPath")
        self.tcl_commands.append("hwi CloseStack")

    def write_tcl_read_node_displacements(self, path_to_h3d_file):
        """
        Creats the Displacement field from the model
        """
        # TODO
        path_to_h3d_file = path_to_h3d_file.replace("\\", "/")


if __name__ == "__main__":
    # local testing only
    scriptBuilder = ScriptBuilderHyperview(
        r"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh"
    )
    scriptBuilder.write_tcl_read_rod_stress(
        r"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh\
            \model1.h3d",
    )

    hyperworksStarter = HyperworksStarter(
        r"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh",
        "model1Hyperview",
    )
    hyperworksStarter.write_script(
        scriptBuilder.tcl_commands,
        r"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh",
        False,
        "",
    )

    # Run Hypermesh in batch to save time
    hyperworksStarter.runHyperview(True, True)
