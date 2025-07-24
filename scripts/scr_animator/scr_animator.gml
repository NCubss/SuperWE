/**
	@description	Creates an animator object. Animator objects animate instance variables, or the arrays/structs within them, in the background without any further input from the user object.
	@param			{Asset.GMAnimCurve} curve	The animation curve to use.
	@param			{real} curve_idx			The index of the specific curve to use.
	@param			{any} target				The target object whose specified instance variable will be animated.
	@param			{string} variable			The instance variable name.
	@param			{real} from_val				Starting value.
	@param			{real} to_val				Ending value.
	@param			{real} time					Length of the animation in frames.
	@param			{real} [accessor]			What accessor the animator should use. (use the Accessor enum!) This is optional and is Accessor.INSTANCE by default.
	@param			{any} [index]				The index of the variable (used for the accessor)
	@returns		obj_animator
*/
function animator(curve, curve_idx, target, variable, from_val, to_val, time, accessor = Accessor.INSTANCE, index = undefined) {
	var anim = instance_create_depth(0, 0, 0, obj_animator);
	with (anim) {
		anim_curve = animcurve_get(curve).channels[curve_idx];
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

//	What type of accessor the animator should use.
//	- INSTANCE means that it will directly edit the instance variable;
//  - ARRAY means it will edit an item in the instance variable's array
//	  (if it is one) given the index;
//	- STRUCT will edit a value in the instance variable's struct, given the key.
enum Accessor {
	INSTANCE,
	ARRAY,
	STRUCT
}