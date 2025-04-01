/*
	obj_animator handles animation curves without the user object itself having
	to care about it. You should make an animator using the animator() function,
	instead of making the animator directly.
*/

// Animation Curve ID
anim_curve_id = 0;
// Animation Curve Index
anim_curve_index = 0;

// Length (steps)
length = 0;
// Object ID
obj_id = 0;
// Instance Variable Name
var_name = "";
// From Value
from = 0;
// To Value
to = 0;
// Accessor
acc = Accessor.INSTANCE;
// Index (struct and array accessor)
idx = undefined;

// Amount of steps processed
steps_in = 0;
// Progress (steps_in/length);
progress = 0;

anim_curve = animcurve_get(anim_curve_id).channels[anim_curve_index];