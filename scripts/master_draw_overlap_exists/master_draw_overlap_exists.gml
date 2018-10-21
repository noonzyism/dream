//this script should ONLY be called by master_draw in the draw event
//checks for an overlap between the given bounding box and current instance/draw request

return rectangle_in_circle(draw_x + inst.left_offset, draw_y + inst.top_offset, draw_x + inst.right_offset, draw_y + inst.bottom_offset, argument0, argument1, argument2);