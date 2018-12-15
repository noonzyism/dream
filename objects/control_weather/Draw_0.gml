depth = -600;

if (fogging) {
	for (var i = 0; i < 42; i +=1) 
	{
		draw_sprite_ext(spr_fog, -1, fogx[i]+xmodifier, fogy[i]-ymodifier, 1, 1, 0, c_white, 0.3);
	}
}



if (snowing) {
	for (var i = 0; i < snow_saturation; i +=1) 
	{
		draw_sprite_ext(snow_particle, -1, snowx[i]+xmodifier, snowy[i]-ymodifier, snowscale[i], snowscale[i], 0, c_white, 0.2);
		if (snowing_fog) {
			draw_sprite_ext(spr_fog, -1, snowx[i]+xmodifier, snowy[i]-ymodifier, snowscale[i], snowscale[i], 0, c_white, 0.2);
		}
	}
}