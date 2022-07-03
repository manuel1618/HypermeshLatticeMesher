import os
import typer
from .exporter.HyperWorksStarter import HyperWorksStarter
from .exporter.ScriptBuilder import ScriptBuilder
from .importer.FemFileReader import FEMFileReader

app = typer.Typer()


class HypermeshLatticeMesher:
    def __init__(self, path_fem_file: str) -> None:
        self.path_fem_file = path_fem_file.replace("\\", "/")

        self.path_tcl_Dir = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/exporter/TCLScript/"
        )

        self.path_hypermesh_Dir = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/exporter/hypermesh/"
        )

        self.path_hyperview_Dir = (
            os.getcwd().replace("\\", "/") + "/hypermesh_lattice_mesher/data/hyperview/"
        )

        FEMFileReader(self.path_fem_file)

        scriptbuilder = ScriptBuilder()
        scriptbuilder.write_tcl_create_Material_Property_Component()
        scriptbuilder.write_tcl_create_nodes()
        scriptbuilder.write_tcl_create_rods()
        scriptbuilder.write_tcl_save_model_and_close(
            self.path_hypermesh_Dir + "model1.hm"
        )

        hyperworksStarter = HyperWorksStarter(self.path_tcl_Dir, "model1")
        hyperworksStarter.write_script(
            scriptbuilder.tcl_commands, self.path_hypermesh_Dir, False, ""
        )

        # Run Hypermesh in batch to save time
        hyperworksStarter.runHyperMesh(True, False)


@app.command()
def mesh(file_path: str):
    if file_path == "":
        path_fem_file = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/femFiles/sphereVoxels1stOrderNoE.fem"
        )
    else:
        path_fem_file = file_path.replace("\\", "/")

    HypermeshLatticeMesher(path_fem_file)


@app.callback()
def callback():
    """
    This CLI provides Lattice Meshing capabilites based on a single .fem File.
    In future versions (date of this comment: 02.07.2022), it will be possible to also
    just use step files which will be auto tetrameshed and taken as an input for the
    lattice mesh generation.
    """


if __name__ == "__main__":
    app()
