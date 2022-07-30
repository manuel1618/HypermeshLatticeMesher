""" main
Main method of the CLI which is done as a CLI with Typer.
"""
import os
import typer
from hypermesh_lattice_mesher.datastructure.materials import Material

from hypermesh_lattice_mesher.exporter.hyperworks_starter import HyperworksStarter
from hypermesh_lattice_mesher.exporter.script_builder_femfile import (
    ScriptBuilderFEMFile,
)
from .exporter.script_builder_hypermesh_tcl import ScriptBuilder
from .importer.fem_file_reader import FEMFileReader

app = typer.Typer()


@DeprecationWarning
@app.command()
def mesh(file_path: str):
    """
    Meshes the .fem file by using tcl commands in hypermesh. Sort of deprecated.
    It stays because may be necessary for later use for more complicated use cases

    Parameters
    ----------
    path_fem_file : str
        The file location of the .fem File with 3D Elements in it

    Returns
    -------"""
    if file_path == "":
        path_fem_file = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/femFiles/smallModel.fem"
        )
    else:
        path_fem_file = file_path.replace("\\", "/")

    path_tcl_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/scripts/"
    )

    path_hypermesh_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/hypermesh/"
    )
    FEMFileReader(path_fem_file)

    scriptbuilder = ScriptBuilder()
    # Material
    material = Material("Material1")
    material.add_linear_material_properties(210000.0, 0.3, 7.85e-9)

    scriptbuilder.write_tcl_create_Material_Property_Component(material, 0.5)
    scriptbuilder.write_tcl_create_nodes()

    scriptbuilder.write_tcl_create_rods()
    scriptbuilder.write_tcl_save_model_and_close(path_hypermesh_dir + "model1.hm")

    hyperworks_starter = HyperworksStarter(path_tcl_dir, "model1")
    hyperworks_starter.write_script(
        scriptbuilder.tcl_commands, path_hypermesh_dir, False, ""
    )

    # Run Hypermesh in batch to save time
    hyperworks_starter.runHyperMesh(True, False)


@app.command()
def meshFEMFile(file_path: str):
    """
    Meshtes the .fem file directly, no tcl commands for hypermesh are generated

    Parameters
    ----------
    path_fem_file : str
        The file location of the .fem File with 3D Elements in it

    Returns
    -------"""
    if file_path == "":
        path_fem_file = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/femFiles/smallModel.fem"
        )
    else:
        path_fem_file = file_path.replace("\\", "/")

    path_hypermesh_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/hypermesh/"
    )

    scriptBuilder = ScriptBuilderFEMFile(FEMFileReader(path_fem_file))
    scriptBuilder.insert_lattice_data_and_export(path_hypermesh_dir + "mode1Direct.fem")


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
