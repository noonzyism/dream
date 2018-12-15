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

screen_height = window_get_height();
draw_set_color(c_black);
draw_set_alpha(0.5);
for (var i = 0; i < obj_player.max_bag_size; i += 1)
{
	draw_rectangle(32 + i*38, screen_height - 32, 68 + i*38, screen_height - 68, false);
}

draw_set_alpha(1);

var i = 0; //bag array index
var j = 0; //pixel index
while (i < obj_player.bag_size) {
	var item = obj_player.bag[i];
	draw_sprite(item[1], -1, 34 + j, screen_height - 66);
	i += 1;
	j += 38;
}


///////////////////////////////////////////////////////////////////////////////////////////////
//game-start screen info popup
///////////////////////////////////////////////////////////////////////////////////////////////
if (start_info) {
	draw_set_color(c_orange);
	draw_set_font(f_stikta18);
	draw_text_ext_transformed(32, 550, string("Lucid Pseudo 3d Engine"), 1, 500, 1, 1, 0);
	draw_text_ext_transformed(32, 600, string("Use [1,2,3] to toggle weather effects"), 1, 500, 0.75, 0.75, 0);
}