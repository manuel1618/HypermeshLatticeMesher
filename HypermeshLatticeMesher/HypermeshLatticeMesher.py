import os
from HypermeshLatticeMesher.exporter.HyperWorksStarter import HyperWorksStarter
from HypermeshLatticeMesher.exporter.ScriptBuilder import ScriptBuilder
from HypermeshLatticeMesher.importer.FemFileReader import FEMFileReader


class HypermeshLatticeMesher:
    def __init__(self, path_fem_file: str) -> None:
        self.path_fem_file = path_fem_file.replace("\\", "/")

        self.path_tcl_Dir = (
            os.getcwd().replace("\\", "/")
            + "/HypermeshLatticeMesher/exporter/TCLScript/"
        )

        self.path_hypermesh_Dir = (
            os.getcwd().replace("\\", "/")
            + "/HypermeshLatticeMesher/exporter/hypermesh/"
        )

        self.path_hyperview_Dir = (
            os.getcwd().replace("\\", "/") + "/HypermeshLatticeMesher/data/hyperview/"
        )

        FEMFileReader(self.path_fem_file)

        scriptbuilder = ScriptBuilder()
        scriptbuilder.write_tcl_create_Material_Property_Component()
        scriptbuilder.write_tcl_create_nodes()
        scriptbuilder.write_tcl_create_rods()
        scriptbuilder.write_tcl_save_model_and_close(
            self.path_hypermesh_Dir + "/model1.hm"
        )

        hyperworksStarter = HyperWorksStarter(self.path_tcl_Dir, "model1")
        hyperworksStarter.write_script(
            scriptbuilder.tcl_commands, self.path_hypermesh_Dir, False, ""
        )

        # Run Hypermesh in batch to save time
        hyperworksStarter.runHyperMesh(True, False)


if __name__ == "__main__":

    path_fem_file = (
        os.getcwd().replace("\\", "/")
        + "/HypermeshLatticeMesher/data/femFiles/smallModel.fem"
    )
    HypermeshLatticeMesher(path_fem_file)
