depth = -1000;

global.opts = ds_queue_create(); //list of performable actions of items/things being moused over

global.notifications = ds_stack_create(); //stack of notifications that get pushed to the UI

//example: "mine copper ore" or "use furnace" or "pick up logs"

instance_create_depth(mouse_x, mouse_y, depth, ui_cursor);

notifs_count = 0;
notifs_alpha = 0;
notif = "";

start_info = true;
alarm[0] = 600;