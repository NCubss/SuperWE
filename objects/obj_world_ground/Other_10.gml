/// @description	Change variant

// play sound effect
audio_play_sound(snd_cambio_objecto, 0, false);
// create transform effect
// we are reusing ripple effect object for this, as it fits perfectly
with (instance_create(x + 24, y + 24, obj_effect_touch)) {
	// place higher in depth order
	depth = other.grabbed_depth - 1;
	// set sprite to transform sprite
	sprite_index = spr_effect_transform;
}
image_index = variant_id;