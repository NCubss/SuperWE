/*
	obj_animator handles animation curves without the user object itself having
	to care about it. You should make an animator using the animator() function,
	instead of making the animator directly.
*/
// Animation Curve Channel Struct
anim_curve = undefined;
// Length (steps)
length = 0;
// Object ID
obj_id = noone;
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
// Callback once the animation is finished
callback = function() {};

// Amount of steps processed
steps_in = 0;
// Progress (steps_in/length);
progress = 0;