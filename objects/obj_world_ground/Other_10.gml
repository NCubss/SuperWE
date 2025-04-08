/// @description	Change variant

// play sound effect
audio_play_sound(snd_cambio_objecto, 0, false);
// create transform effect
// we are reusing ripple effect object for this, as it fits perfectly
with (instance_create(x + 24 + 8 - 15, y + 24 + 10 - 16, obj_effect_touch)) {
	// place higher in depth order
	depth = other.grabbed_depth - 1;
	// set sprite to transform sprite
	sprite_index = spr_effect_transform;
}
inst_btn_ground.variant_id = variant_id;
obj_world_editor.selected_variant = variant_id;
image_index = variant_id;