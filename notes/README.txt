README

Welcome to Lucid Engine 1.0!

Lucid Engine is a collection of tools & resources in GMS2 intended to aid developers in creating pseudo-3d style games. 

The demo is entirely composed of 2d sprites and does not use any complex built-in 3d GM support. Instead, it uses techniques to offset sprites intelligently for a 3-dimensional perspective. Depth is calculated to assure sprites are drawn in the correct order at all times.

This allows devs to easily create a 3d world without having to worry at all about handling a 3rd dimension - the engine handles all of that for you! You can keep working on your game as if it were 2d with this solution.

-----

Included in this project:

1. Pseudo 3d Engine
	-3d perspective rendering with camera rotation
	-fully optimized depth handling for precise draw ordering (& no Z-fighting!)
	-3 objects leveraging p3d are included (lamppost, tree, cabin)

2. Lighting engine
	-supports multiple spotlights with real-time motion & effects
	-can be combined with the p3d engine to draw lights at any height

3. Day & Night cycling
	-progressive shifting between darkness and daytime
	
4. Basic Inventory & Item system

5. Basic Skill & Action system

6. Tile-based collision detection (collision_map)

7. Various sprite & tile resources free for your usage

-----

Controls:

Left & Right arrow keys for rotating camera

Point & Click using mouse for movement & selection

-----

Contact/Help/Questions

Titanomics

7itanomics@gmail.com