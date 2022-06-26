# HypermeshLatticeMesher

Tool to generate lattice Meshes from existing hex meshes in Hyperworks (for now - maybe other element types later)

From input as a .fem file - the program generates lattice structures which can be then used for an 1D element analysis / optimization
Currently implemented: Hex8 elements, Hex20 is somewhat done but not fully (26.06.2022)

![grafik](https://user-images.githubusercontent.com/9959248/175821413-6ec8eb64-ae47-4e76-8399-81c49f231f12.png)



## Notes (for coding)

Some notes for better understanding the code in here (mostly for myself)

### Execute

- run the module via: python -m HypermeshLatticeMesher.HypermeshLatticeMesher
- This is the top module which should contain the main logic for the program

### Tests

- run the tests via: 'python -m unittest discover'
