// Pause all sounds
if (pause_sounds) {
	audio_pause_all();
}

// Play open sound
audio_play_sound(open_sound, 0, false);

// Set depth because fuck you
depth = -1;

// Take a screenshot
screen = sprite_create_from_surface(
	application_surface,
	0, 0,
	surface_get_width(application_surface),
	surface_get_height(application_surface),
	false, false, 0, 0
);

// Deactivate all previously active instances
// (and mark then down, or if we activate ALL instances, we might get unintended behavior)
active_instances = [];
with (all) {
	if (
		object_index != obj_coordinator
		&& object_index != obj_cursor
		&& object_index != obj_cheat_mode
		&& id != other.id
	) {
		array_push(other.active_instances, id);
		instance_deactivate_object(id);
	}
}

// Create the animated background for the dialog
back = instance_create_depth(0, 0, 0, obj_intro_bg, {
	image_blend: #000000,
	image_angle: 22.5,
	c1: #141414,
	c2: #141414,
	c3: #141414,
	c4: #141414,
	target_is_app_surf: false,
	target_is_hd: true,
	target_width: width * 2,
	target_height: height * 2
});

// Screenshot dark overlay color value (imagine it used as rgb(dark, dark, dark))
// The resulting color will be applied on the screenshot with a subtract blend
dark = 0;

// Animate it, and enable interactions on callback
animator(ac_dialog, 2, id, "dark", 0, 64, 30).callback = function() {
	can_interact = true;
};

// Create the close button
close_btn = noone;
if (can_close) {
	close_btn = instance_create_depth(
		width - sprite_get_width(spr_button_close) - 5,
		5,
		-2,
		obj_close_dialog, {
			dialog: id
		}
	);
}

// Start animating the offset depending on slide_from
anim = noone;
switch (slide_from) {
	case Direction.UP:
		xoffset = 0;
		yoffset = -camera_height;
		animator(ac_dialog, 0, id, "yoffset", yoffset, 0, 60);
		break;
	case Direction.RIGHT:
		xoffset = camera_width;
		yoffset = 0;
		animator(ac_dialog, 0, id, "xoffset", xoffset, 0, 60);
		break;
	case Direction.DOWN:
		xoffset = 0;
		yoffset = camera_height;
		animator(ac_dialog, 0, id, "yoffset", yoffset, 0, 60);
		break;
	case Direction.LEFT:
		xoffset = -camera_width;
		yoffset = 0;
		animator(ac_dialog, 0, id, "xoffset", xoffset, 0, 60);
		break;
}

// Apply position from Begin Step event to fix visual bug
event_perform(ev_step, ev_step_begin);

// Whether the user can interact with the dialog right now
can_interact = false;