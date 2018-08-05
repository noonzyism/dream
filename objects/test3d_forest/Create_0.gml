draw_3d(2); //2 is the spacing value to use in between sprite layers


/*
This object is an example of a fantastic way to drastically cut expensive compute time while still rendering lots of trees:
===========================================
many trees
minFPS, maxFPS, avgFPS
8, 102, 34
===========================================
no trees
minFPS, maxFPS, avgFPS
11, 201, 78
===========================================
forest
minFPS, maxFPS, avgFPS
50, 184, 143

minFPS, maxFPS, avgFPS
52, 224, 117
===========================================


TODO: the only issue with this method is depth calculating, since each tree uses the same root x,y pos of this object
to calculate whether it's in front or behind the player

a possible help for this is to give master_draw some notion of a "multi-object"
this forest multi-object can have an array of points corresponding to the positions of the 3d trees/objects in its sprite

master_draw (or the object itself) can determine what point is closest to the player and use that one for depth calculating

a solution is to use these multi-objects only for background scenery that can't be reached within by the player

*/