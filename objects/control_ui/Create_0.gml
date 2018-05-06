depth = -1000;

hoveropts = ds_list_create(); //list of performable actions of items/things being moused over

hoveropts_amount = 0;

show_hoveropts = false;

//example: "mine copper ore" or "use furnace" or "pick up logs"

instance_create_depth(mouse_x, mouse_y, depth, ui_cursor);