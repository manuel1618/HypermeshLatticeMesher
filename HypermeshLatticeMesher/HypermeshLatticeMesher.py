import os
from HypermeshLatticeMesher.exporter.HyperWorksStarter import HyperWorksStarter
from HypermeshLatticeMesher.exporter.ScriptBuilder import ScriptBuilder
from HypermeshLatticeMesher.importer.FemFileReader import FEMFileReader


class HypermeshLatticeMesher:
    def __init__(self, path_fem_file: str) -> None:
        self.path_fem_file = path_fem_file.replace("\\", "/")

        self.path_tcl_Directory = (
            os.getcwd().replace("\\", "/")
            + "/HypermeshLatticeMesher/exporter/TCLScript/"
        )

        FEMFileReader(self.path_fem_file)
        scriptbuilder = ScriptBuilder()
        scriptbuilder.write_tcl_create_Material_Property_Component()
        scriptbuilder.write_tcl_create_nodes()
        scriptbuilder.write_tcl_create_rods()
        hyperworksStarter = HyperWorksStarter(self.path_tcl_Directory, "model1")
        hyperworksStarter.write_script(
            scriptbuilder.tcl_commands, self.path_tcl_Directory, False, ""
        )


if __name__ == "__main__":
    HypermeshLatticeMesher(
        r"D:\GITHUB\HypermeshLatticeMesher\.git\HypermeshLatticeMesher\HypermeshLatticeMesher\data\femFiles\smallModel.fem"
    )
