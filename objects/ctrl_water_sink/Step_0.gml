inst = instance_nearest(x, y, obj_waterflow);

if (distance_to_object(inst) < 16) {
	instance_destroy(inst);
}