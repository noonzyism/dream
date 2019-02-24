// create the waterflow
var i			= instance_create_depth(x, y, depth, obj_waterflow);
i.direction		= dir;
i.speed			= velocity;

// reset alarm
alarm[0]		= rate;