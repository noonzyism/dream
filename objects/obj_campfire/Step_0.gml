radius += bloom;

//these vals are for assuring the light surface gets drawn right in the center of the camera's focus to fully encompass the screen even when the view is rotated
if (surface_offset_x == -1 || surface_offset_y == -1) {
	surface_offset_x = (global.view_diameter - global.game_width)/2;
	surface_offset_y = (global.view_diameter - global.game_height)/2;
}

light_surface_x = global.cam_x - surface_offset_x;
light_surface_y = global.cam_y - surface_offset_y;

