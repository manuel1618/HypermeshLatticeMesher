# HypermeshLatticeMesher

Tool to generate lattice Meshes from existing hex meshes in Hyperworks (for now - maybe other element types later)

From input as a .fem file - the program generates lattice structures which can be then used for an 1D element analysis / optimization
Currently implemented: Hex8 elements, Hex20 is somewhat done but not fully (26.06.2022)

![grafik](https://user-images.githubusercontent.com/9959248/175821413-6ec8eb64-ae47-4e76-8399-81c49f231f12.png)

When exporting .fem files, make sure, you use the free format and don't remove the E from real values --> Edit: No E's are now okay - you can just don't care about it:

![grafik](https://user-images.githubusercontent.com/9959248/175821529-212807c2-0260-49d6-9094-f87b30b76a51.png)

## Notes (for coding)

Some notes for better understanding the code in here (mostly for myself)

### Execute

- run the module in a poetry shell via: python -m hypermesh_lattice_mesher.main
- Commands:
  - mesh
    - Meshes the .fem file by using tcl commands in hypermesh. Sort of deprecated. It stays because may be necessary for later use for more complicated use cases
  - meshfemfile
    - Meshtes the .fem file directly, no tcl commands for hypermesh are generated
  - readdisplacement
    - Reads the total displacement values from an .h3d file and saves a file of those values
  - readstress
    - Reads the axial stress values from an .h3d file and saves a file of those values
  - update-material-values
    - Create multiple materials and assign elmeents to them according to the
    stress values given in the list

### Tests

- Done in the task file
- task: Available tasks for this project:
  - build:        Builds the python package
  - format:       Formats the source code
  - lint:         Lints the code and reports on issues.
  - setup:        Install dependencies and dev-dependencies
  - test:         Runs the test suite.
