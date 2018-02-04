/// find_obstruction(x0, y0, x1, y1, tolerance)
// checks if a collision map tile exists on the line between (x0, y0) and (x1, y1)
// if so, returns the last free point before collision, else undefined
//
//      x0,y0       first point on collision line, real
//      x1,y1       second point on collision line, real
//		tolerance	the lower the number, the more precise the detection
{
    var ox,oy,dx,dy, tolerance;
    ox = argument0;
    oy = argument1;
    dx = argument2;
    dy = argument3;
	tolerance = argument4;
	
	var points;
	
	var vx = dx - ox;
	var vy = dy - oy;
	
	if (abs(vx) < tolerance) && (abs(vy)  < tolerance) {
		return undefined;
	}

	var collision_map = layer_tilemap_get_id(layer_get_id("collision_map"));
	
	var inner = sqr(vx) + sqr(vy);
	
	if (inner <= 0) {
		points[0] = ox;
		points[1] = oy;
		return points;
	}
	
	var dist = sqrt(inner);
	
	var ux = (vx/dist) * tolerance;
	var uy = (vy/dist) * tolerance;
	
	
	var nx = ox + ux;
	var ny = oy + uy;
	
	var check = tilemap_get_at_pixel(collision_map, nx, ny) & tile_index_mask;
	
	
	if (check != 0) {
		points[0] = ox;
		points[1] = oy;
		return points;
	}

	
	return find_obstruction(nx, ny, dx, dy, tolerance);
}
