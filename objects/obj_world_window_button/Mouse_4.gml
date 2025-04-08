// send event to object to transform
// I have to put this object_is_ancestor() check to prevent Feather from
// making a warning about the unknown user event.
// + Feather acts stupid anyway. I just disabled the warnings.
if (
	object_is_ancestor(object.object_index, obj_parent_world_res)
	&& variant_id != object.variant_id
) {
	with (object) {
		variant_id = other.variant_id;
		event_user(0);
	}
}