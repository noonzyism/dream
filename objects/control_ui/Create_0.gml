depth = -1000;

global.opts = ds_queue_create(); //list of performable actions of items/things being moused over

opts_amount = 0;

opts_show_all = false;

//example: "mine copper ore" or "use furnace" or "pick up logs"

instance_create_depth(mouse_x, mouse_y, depth, ui_cursor);