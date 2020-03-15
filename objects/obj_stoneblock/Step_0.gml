//used for calculating 3d projections
xc = sin(global.cam_angle * pi/180);
yc = cos(global.cam_angle * pi/180);

left_x = x;
left_y = y;

right_x = x + sprite_width;
right_y = y;

draw_bl_x = left_x + (1) * xc;
draw_bl_y = left_y - (1) * yc;

draw_tl_x = left_x + sprite_width * xc;
draw_tl_y = left_y - sprite_width * yc;

draw_tr_x = right_x + sprite_width * xc;
draw_tr_y = right_y - sprite_width * yc;

draw_br_x = right_x + (1) * xc;
draw_br_y = right_y - (1) * yc;


//depth = -1000;