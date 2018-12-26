i = 0;

while (i < layer_count) {
	
	draw_sprite_ext(sprite_index, i, (x - i * spacing * xc) + rand[i], (y + i * spacing * yc) + rand[i], 1, 1, 0, c_white, 0.3);
	if (i == light_level) {
		if (master_time.hour < 7 || master_time.hour > 19) draw_sprite_ext(spr_glow, i, (x - i * spacing * xc), (y + i * spacing * yc), 2, 2, 0, c_white, 0.45);
	}
	
	i += 1;
}