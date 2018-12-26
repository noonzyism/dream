layer_count = sprite_get_number(sprite_index);

spacing = 2;

light_level = 45;

depth = 350;

last_cam_angle = 0;

i = 0;
while (i < layer_count) {
	rand[i] = random(6) - 3;
	i += 1;
}
alarm[0] = 15;