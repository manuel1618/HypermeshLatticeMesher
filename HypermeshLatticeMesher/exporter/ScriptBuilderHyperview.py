from typing import Tuple

from HypermeshLatticeMesher.exporter.HyperWorksStarter import HyperWorksStarter
from HypermeshLatticeMesher.datastructure.Element import Element, Connection_Type


class ScriptBuilderHyperview:
    """
    Script building class (tcl) for hypermesh

    Parameters:
    ---------
    tcl_commands : List[str]
        List of all tcl commands to be executed

    """

    tcl_commands = []

    def __init__(self):
        self.tcl_commands = []

    def write_tcl_read_rod_stress(
        self, path_to_h3d_file: str, path_to_working_dir: str
    ):
        """
        Creates the hyperview Script which creates a file with elems ids and their stress values
        """
        self.path_to_working_dir = path_to_working_dir.replace("\\", "/")
        self.path_to_h3d_file = path_to_h3d_file.replace("\\", "/")

        self.tcl_commands.append(f"cd {  self.path_to_working_dir}")
        self.tcl_commands.append(f'set outPath "{self.path_to_working_dir}/output.txt"')
        self.tcl_commands.append(f'set import_file_path "{self.path_to_h3d_file}"')
        self.tcl_commands.append(f"hwi OpenStack")
        self.tcl_commands.append(f"hwi GetSessionHandle session")
        self.tcl_commands.append(f"session GetProjectHandle project")
        self.tcl_commands.append(f"project GetPageHandle page 1")
        self.tcl_commands.append(f"page GetWindowHandle win 1")
        self.tcl_commands.append(f"win SetClientType animation")
        self.tcl_commands.append(f"win GetClientHandle anim")
        self.tcl_commands.append(f"anim AddModel $import_file_path")
        self.tcl_commands.append(f"set id [anim AddModel $import_file_path]")
        self.tcl_commands.append(f"anim GetModelHandle myModel $id")
        self.tcl_commands.append(f"myModel SetResult $import_file_path")
        self.tcl_commands.append(f"anim Draw")
        self.tcl_commands.append(f"myModel GetResultCtrlHandle myResult")
        self.tcl_commands.append(f"set current [myResult GetCurrentSubcase]")
        self.tcl_commands.append(
            f"myResult SetCurrentSimulation [expr [myResult GetNumberOfSimulations $current]-1]"
        )
        self.tcl_commands.append(f"set data_types [myResult GetDataTypeList $current]")
        self.tcl_commands.append(f"myResult GetContourCtrlHandle myContour")
        self.tcl_commands.append(f"myContour SetDataType [lindex $data_types 1]")
        self.tcl_commands.append(f"myContour SetEnableState true")
        self.tcl_commands.append(f"anim Draw")
        self.tcl_commands.append(f"myModel GetQueryCtrlHandle myQuery")
        self.tcl_commands.append(f"set set_id [myModel AddSelectionSet element]")
        self.tcl_commands.append(f"myModel GetSelectionSetHandle elem_set $set_id")
        self.tcl_commands.append(f'elem_set Add "all"')
        self.tcl_commands.append(f"myQuery SetSelectionSet $set_id")
        self.tcl_commands.append(f'myQuery SetQuery "element.id contour.value"')
        self.tcl_commands.append(f"myQuery WriteData $outPath")
        self.tcl_commands.append(f"hwi CloseStack")


if __name__ == "__main__":
    # local testing only
    scriptBuilder = ScriptBuilderHyperview()
    scriptBuilder.write_tcl_read_rod_stress(
        f"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh\model1.h3d",
        f"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh",
    )

    hyperworksStarter = HyperWorksStarter(
        f"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh",
        "model1Hyperview",
    )
    hyperworksStarter.write_script(
        scriptBuilder.tcl_commands,
        f"D:\GITHUB\HypermeshLatticeMesher\HypermeshLatticeMesher\exporter\hypermesh",
        False,
        "",
    )

    # Run Hypermesh in batch to save time
    hyperworksStarter.runHyperview(True, True)
