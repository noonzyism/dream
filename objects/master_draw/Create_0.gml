depth = -50;

global.drawstack = ds_priority_create();

global.drawstack_3d = ds_priority_create();

drawsequence = ds_list_create();
//display_reset(8, false);
//gpu_set_tex_filter(true);

light_was_drawn = false;