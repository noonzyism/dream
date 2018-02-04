camx = camera_get_view_angle(control_camera.cam);
camy = camera_get_view_angle(control_camera.cam);

x1s = x1 - (camx/4);
y1s = y1 - (camy/4);
x2s = x2 - (camx/4);
y2s = y2 - (camy/4);
x3s = x3 - (camx/4);
y3s = y3 - (camy/4);
x4s = x4 - (camx/4);
y4s = y4 - (camy/4);

x1s = x1 - (camx/20);
y1s = y1 - (camy/20);
x2s = x2 - (camx/20);
y2s = y2 - (camy/20);
x3s = x3 - (camx/20);
y3s = y3 - (camy/20);
x4s = x4 - (camx/20);
y4s = y4 - (camy/20);

show_debug_message("camx="+string(camx)+" camy="+string(camy));

//height = random_range(0.5, 2);
height = 2;