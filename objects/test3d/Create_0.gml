x1 = x;
y1 = y;
x2 = x+100;
y2 = y;
x3 = x+100;
y3 = y+100;
x4 = x;
y4 = y+100;

cam_initx = global.cam_x;
cam_inity = global.cam_y;

show_debug_message("camx="+string(cam_initx)+" camy="+string(cam_inity));

depth = -y*10;