/**
	@function		animator(curve, curve_idx, obj, variable, from, to, time)
	@description	Creates an animator with the specified configuration.
					See obj_animator for more info.
	@param			{Asset.GMAnimCurve} curve	The animation curve to use
	@param			{real} curve_idx			The index of the specific curve
												to use
	@param			{any} target				The target object whose
												specified instance variable
												will be animated.
	@param			{string} variable			The instance variable name
	@param			{real} from_val				Starting value
	@param			{real} to_val				Ending value
	@param			{real} time					The amount of time this
												animation will take
	@param			{real} [accessor]			The type of accessor the
												animator will use
	@param			{any} [index]				The index of the variable
												(used for the accessor)
	@returns		obj_animator
*/
											
function animator(curve, curve_idx, target, variable, from_val, to_val, time, accessor = Accessor.INSTANCE, index) {
	var anim = instance_create_depth(0, 0, 0, obj_animator);
	with (anim) {
		anim_curve_id = curve;
		anim_curve_index = curve_idx;
		obj_id = target;
		var_name = variable;
		from = from_val;
		to = to_val;
		length = time;
		acc = accessor;
		idx = index;
	}
	return anim.id;
}

enum Accessor {
	INSTANCE,
	ARRAY,
	STRUCT
}