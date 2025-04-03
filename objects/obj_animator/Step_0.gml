// new step
steps_in++;
// progress (0 - 1)
progress = steps_in / length;
// if we are finished, destroy the animator
if (progress > 1) instance_destroy();
// finally, set the user object's instance variable to the evaluated between value
switch (acc) {
	// access the value by obj_id.var_name
	case Accessor.INSTANCE:
		variable_instance_set(
			obj_id, var_name,
			from + ((to - from) * animcurve_channel_evaluate(anim_curve, progress))
		);
		break;
	// access the value by obj_id.var_name[idx]
	case Accessor.ARRAY:
		var arr = variable_instance_get(obj_id, var_name);
		arr[idx] = from + ((to - from) * animcurve_channel_evaluate(anim_curve, progress));
		variable_instance_set(obj_id, var_name, arr);
		break;
	// access the value by obj_id.var_name[$ idx]
	case Accessor.STRUCT:
		var str = variable_instance_get(obj_id, var_name);
		arr[$ idx] = from + ((to - from) * animcurve_channel_evaluate(anim_curve, progress));
}