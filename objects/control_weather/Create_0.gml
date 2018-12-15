camx = global.cam_angle;
camy = global.cam_angle;

//Fog

for (var i = 0; i < 42; i += 1) {
	fogx[i] = random(1200) * -1;
	fogy[i] = random(2400) - 1200;
	fogspeed[i] = random(2);
}

fogging = true;

height = 5;

//Snow

snow_particle = spr_flakes_group;
snow_particle_frames = snow_particle.image_number;
snow_saturation = 100;
snow_started = false;
snowing = true;
snowing_fog = false;

image_speed = 0.1;

snow_layer = layer_get_id("tiles_snow");