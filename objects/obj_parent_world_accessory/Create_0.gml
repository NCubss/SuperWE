/* Pre-Create variables:

// the object this accessory is on
holder = noone;

*/

event_inherited();

// change function
can_put_here = function(xx, yy) {
	var inst = collision_rectangle((xx * 48) + 1, (yy * 48) + 1, (xx * 48) + 47, (yy * 48) + 47, obj_parent_world_res, true, true);
	if (inst == noone) {
		// no object here
		return false;
	} else if (object_is_ancestor(inst.object_index, obj_parent_world_accessory)) {
		// accessory already here
		return false;
	} else if (object_is_ancestor(inst.object_index, obj_parent_world_path)) {
		// valid if no accessories on this path
		return inst.accessory == noone;
	} else {
		// not a path
		return false;
	}
}

with (holder) {
	accessory = other.id;
}

// accessories don't need edges
show_edges = false;