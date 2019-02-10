camx = global.cam_angle;
camy = global.cam_angle;
xmodifier = (60*height)*sin(camx*pi/180);
ymodifier = (60*height)*cos(camx*pi/180);

ui_xmodifier = (height)*sin(camx*pi/180);
ui_ymodifier = (height)*cos(camx*pi/180);


////////////////////
// Weather Toggles
///////////////////

if keyboard_check_pressed(ord("1")) {
	snowing = !snowing;
	notification("Snow: "+string(snowing));
	layer_set_visible(snow_layer, snowing);
}

if keyboard_check_pressed(ord("2")) {
	snowing_fog = !snowing_fog;
	notification("Snow fog: "+string(snowing_fog));
}

if keyboard_check_pressed(ord("3")) {
	fogging = !fogging;
	notification("Fog: "+string(fogging));
}



///////////////////////////////////////////////////////
// FOG
//////////////////////////////////////////////////////
if (fogging) {
	for (var i = 0; i < 42; i += 1) {
		if (fogx[i] > 2200) {
			fogx[i] = -640;
		}
		else {
			fogx[i] += fogspeed[i];
		}
	}
}


///////////////////////////////////////////////////////
// SNOW
//////////////////////////////////////////////////////

if (snowing) {
	if (snow_started == false) {
		for (var i = 0; i < snow_saturation; i += 1) {
			snowy[i] = obj_player.y - global.game_height/2 - random(512);
			snowx[i] = random(global.game_width);
			snowspeed[i] = random(80) / 10 + 1;
			snowscale[i] = random(5)/10 + 0.5;
		}
		snow_started = true;
	}


	view_diam = global.view_diameter;
	for (var i = 0; i < snow_saturation; i += 1) {
		if (point_distance(obj_player.x, obj_player.y, snowx[i], snowy[i]) > view_diam) {
			rand = random(view_diam + 512) - view_diam/2 - 256;
			snowy[i] = obj_player.y + y_offset(rand, -view_diam/2);
			snowx[i] = obj_player.x + x_offset(rand, -view_diam/2);
		
		}
		else {
			snowx[i] += x_offset(0, snowspeed[i]);
			snowy[i] += y_offset(0, snowspeed[i]);
		}
	}
}