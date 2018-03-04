//obstruction_at(x, y) returns true if a collision_map tile exists at the given point
{
	var cx, cy;
	cx = argument0;
	cy = argument1;

	var collision_map = layer_tilemap_get_id(layer_get_id("collision_map"));
	
	var check = tilemap_get_at_pixel(collision_map, cx, cy) & tile_index_mask;
	
	if (check != 0) {
		return true;
	}
	else {
		return false;
	}
}