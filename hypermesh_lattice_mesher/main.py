""" main
Main method of the CLI which is done as a CLI with Typer.
"""
import os
from typing import Dict, List
import typer
from hypermesh_lattice_mesher.datastructure.materials import Material

from hypermesh_lattice_mesher.exporter.hyperworks_starter import HyperworksStarter
from hypermesh_lattice_mesher.exporter.script_builder_femfile import (
    ScriptBuilderFEMFile,
)
from hypermesh_lattice_mesher.exporter.script_builder_hypermesh_tcl import ScriptBuilder
from hypermesh_lattice_mesher.importer.fem_file_reader import FEMFileReader
from hypermesh_lattice_mesher.exporter.script_builder_hyperview import (
    ScriptBuilderHyperview,
)

app = typer.Typer(no_args_is_help=True)


@app.command()
def mesh(
    file_path: str = typer.Argument(
        ..., help="The file location of the .fem File with 3D Elements in it"
    ),
):
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
            + "/hypermesh_lattice_mesher/data/import/femFiles/smallModel.fem"
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
def meshFEMFile(
    file_path: str = typer.Argument(
        ..., help="The file location of the .fem File with 3D Elements in it"
    ),
):
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
            + "/hypermesh_lattice_mesher/data/import/femFiles/smallModel.fem"
        )
    else:
        path_fem_file = file_path.replace("\\", "/")

    path_hypermesh_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/hypermesh/"
    )

    scriptBuilder = ScriptBuilderFEMFile(FEMFileReader(path_fem_file))
    scriptBuilder.insert_lattice_data_and_export(path_hypermesh_dir + "mode1Direct.fem")


@app.command()
def readStress(
    file_path: str = typer.Argument(..., help="Path to the h3d file to be read"),
):
    """
    Reads the axial stress values from an .h3d file and saves a file of those values

    Parameters
    ----------
    file_path : str
       Path to the h3d file to be read

    Returns
    -------
    """

    if file_path == "":
        path_h3d_file = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/import/hyperview/model1.h3d"
        )
    else:
        path_h3d_file = file_path.replace("\\", "/")
    path_tcl_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/scripts/"
    )
    path_hypermesh_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/hypermesh/"
    )
    path_output_dir = (
        os.getcwd().replace("\\", "/") + "/hypermesh_lattice_mesher/data/export/values/"
    )

    scriptBuilder = ScriptBuilderHyperview(path_output_dir)
    scriptBuilder.write_tcl_read_rod_stress(path_h3d_file)

    hyperworksStarter = HyperworksStarter(path_tcl_dir, "modelName")
    hyperworksStarter.write_script(
        scriptBuilder.tcl_commands,
        path_hypermesh_dir,
        False,
        "",
    )

    # Run Hypermesh in batch to save time
    hyperworksStarter.runHyperview(True, True)


@app.command()
def readDisplacement(
    file_path: str = typer.Argument(..., help="path to the h3d file to be read"),
):
    """
    Reads the total displacement values from an .h3d file and saves a file of those
    values

    Parameters
    ----------
    file_path : str
       path to the h3d file to be read

    Returns
    -------
    """

    if file_path == "":
        path_h3d_file = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/import/hyperview/model1.h3d"
        )
    else:
        path_h3d_file = file_path.replace("\\", "/")
    path_tcl_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/scripts/"
    )
    path_hypermesh_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/hypermesh/"
    )
    path_output_dir = (
        os.getcwd().replace("\\", "/") + "/hypermesh_lattice_mesher/data/export/values/"
    )

    scriptBuilder = ScriptBuilderHyperview(path_output_dir)
    scriptBuilder.write_tcl_read_node_displacements(path_h3d_file)

    hyperworksStarter = HyperworksStarter(path_tcl_dir, "modelName")
    hyperworksStarter.write_script(
        scriptBuilder.tcl_commands,
        path_hypermesh_dir,
        False,
        "",
    )

    # Run Hypermesh in batch to save time
    hyperworksStarter.runHyperview(True, True)


@app.command()
def update_material_values(
    path_3dfem_file: str = typer.Argument(
        ...,
        help="Path to the file containing the 3d model where to update the materias",
    ),
    path_criteria: str = typer.Argument(
        ...,
        help="Path to the critera file contining element values (e.g. form the read displacement\
         command)",
    ),
    number_materials: int = typer.Argument(
        10,
        help="Number of materials to create for the range of yng modules (linear separated)",
    ),
    lower_yng: float = typer.Argument(0, help="lower Young's Module boundary"),
    upper_yng: float = typer.Argument(210000, help="upper Young's Module boundary"),
):
    """
    Create multiple materials and assign elmeents to them according to the
    stress values given in the list

    Parameters
    ---------
    path_3dfem_fise: str
      Path to the file containing the 3d model where to update the materias
    path_criteria : str
      Path to the critera file contining element values (e.g. form the read displacement command)
    munber_materials : int
      Number of materials to create for the range of yng modules (linear separated)
    lower_yng : float
      lower Young's Module boundary
    upper_yng : float
      upper Young's Module boundary

    """
    if path_3dfem_file == "":
        path_3dfem_file = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/import/femFiles/smallModelLattice.fem"
        )
    else:
        path_3dfem_file = path_3dfem_file.replace("\\", "/")

    if path_criteria == "":
        path_criteria = (
            os.getcwd().replace("\\", "/")
            + "/hypermesh_lattice_mesher/data/import/values/smallModelStress.txt"
        )
    else:
        path_criteria = path_criteria.replace("\\", "/")

    if number_materials == 0:
        number_materials = 10
    if lower_yng == 0:
        lower_yng = 20000
    if upper_yng == 0:
        upper_yng = 120000

    path_tcl_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/scripts/"
    )

    path_hypermesh_dir = (
        os.getcwd().replace("\\", "/")
        + "/hypermesh_lattice_mesher/data/export/hypermesh/"
    )

    scriptbuilder = ScriptBuilder()
    # Material
    materials = Material.create_materials(
        number_materials, (lower_yng, upper_yng), 0.3, 7.85e-9
    )
    scriptbuilder.write_tcl_create_materials_properties(materials, 0.5)
    scriptbuilder.write_tcl_import_fem_file(path_3dfem_file)

    # Assign element Ids to materials
    property_name_to_element_ids = fetch_elem_id_to_prop_name(path_criteria, materials)
    scriptbuilder.write_tcl_update_rod_properties(property_name_to_element_ids)
    scriptbuilder.write_tcl_save_model_and_close(path_hypermesh_dir + "model_test.hm")

    hyperworks_starter = HyperworksStarter(path_tcl_dir, "model1")
    hyperworks_starter.write_script(
        scriptbuilder.tcl_commands, path_hypermesh_dir, False, ""
    )

    # Run Hypermesh in batch to save time
    hyperworks_starter.runHyperMesh(True, False)


def fetch_elem_id_to_prop_name(path_criteria: str, materials: List[Material]) -> Dict:
    """
    Map the stress values from the file to material ids
    """
    elem_id_to_value = {}
    min_value = 0
    max_value = 0
    with open(path_criteria, "r", encoding="utf-8") as criteria_file:
        for line in criteria_file.readlines():
            if line.strip() == "":
                continue
            if not line.strip()[0].isnumeric():
                continue
            id_ = line.split(",")[0]
            value = float(line.split(",")[1])
            if abs(value) < min_value:
                min_value = abs(value)
            if abs(value) > max_value:
                max_value = abs(value)
            elem_id_to_value[id_] = value

    property_to_elem_ids = {}
    step: int = (max_value - min_value) / float(len(materials))

    for id_, value in elem_id_to_value.items():
        id_material: int = round((float(abs(value)) - min_value) / step)
        if id_material == len(materials):
            id_material = len(materials) - 1
        property_name = f"property_{materials[id_material].id_}"

        if property_name in property_to_elem_ids:
            temp = property_to_elem_ids[property_name]
            temp.append(id_)
            property_to_elem_ids[property_name] = temp
        else:
            property_to_elem_ids[property_name] = [id_]

    return property_to_elem_ids


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
