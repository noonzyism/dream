///////////////////////////////////////////////////////////////////////////////////////////////
//notifications
///////////////////////////////////////////////////////////////////////////////////////////////
while (!ds_stack_empty(global.notifications)) {
	notifs_alpha = 1;
	notif = ds_stack_pop(global.notifications);
}

if (notifs_alpha > 0) {
	notifs_alpha -= 0.005;
}
else {
	notifs_alpha = 0;
}

if (notif != "") {
	draw_set_alpha(notifs_alpha);
	draw_set_color(c_white);
	draw_set_font(f_stikta18);
	draw_text_ext_transformed(32, 32, string(notif), 1, 500, 1, 1, 0);
}

draw_set_alpha(1);


///////////////////////////////////////////////////////////////////////////////////////////////
//inventory
///////////////////////////////////////////////////////////////////////////////////////////////

screen_height = window_get_height(); //TODO: this doesn't work well for all window resizes, need to improve
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(32, screen_height - 32, 68, screen_height - 68, false);
draw_rectangle(70, screen_height - 32, 106, screen_height - 68, false);
draw_rectangle(108, screen_height - 32, 144, screen_height - 68, false);
draw_rectangle(146, screen_height - 32, 182, screen_height - 68, false);

draw_set_alpha(1);

var i = 0;
var j = 0;
while (i < obj_player.bag_size) {
	var item = obj_player.bag[i];
	//show_debug_message("item is "+string(item));
	draw_sprite(item[1], -1, 34 + j, screen_height - 66);
	i += 1;
	j += 36;
}