/**
	@description	Unknown
	@param			{any} bind	Unknown
	@returns		{Array<any>}
*/
function __background_get_element(bind) {
	var result = [];
	result[0] = -1;
	result[1] = -1;
	result[2] = -1;
	// Look at the existing layers in the room to see if we have any foregrounds or backgrounds
	var fg_string = "Compatibility_Foreground_";
	var bg_string = "Compatibility_Background_";
	var layer_list = layer_get_all();
	var layer_id = -1;
	var is_foreground = false;
	// Try and find the appropriate background in the list of layers
	for(var i = 0; i < array_length(layer_list); i++) {
		var layer_name = layer_get_name(layer_list[i]);	
		if (string_pos(fg_string, layer_name) > 0) {
			var slot_chr = string_char_at(layer_name, string_length(fg_string) + 1);
			if (slot_chr == "") {
				continue;
			}
			var slot = real(slot_chr);
			if (slot == bind) {
				layerid = layer_list[i];
				is_foreground = true;
				break;
			}		
		} else if (string_pos(bg_string, layer_name) > 0) {
			var slot_chr = string_char_at(layer_name, string_length(bg_string) + 1);
			if (slot_chr == "") {
				continue;
			}
			var slot = real(slot_chr);
			if (slot == bind) {
				layer_id = layer_list[i];
				is_foreground = false;
				break;
			}		
		}	
	}
	if (layer_id != -1) {
		// We have a winner!
		// Get id of background element on this layer
		var els = layer_get_all_elements(layer_id);
		var els_length = array_length(els);
		for(var i = 0; i < els_length; i++) {
			if (layer_get_element_type(els[i]) == layerelementtype_background) {				
				result[0] = els[i];
				result[1] = layer_id;
				result[2] = is_foreground;
			}
		}			
	} else {
		// Need to construct a new layer with a new background
		var new_back = __background_set_element(bind, false, false, -1, 0, 0, true, true, 1, 1, false, 0, 0, $ffffff, 1);
		result[0] = new_back[0];
		result[1] = new_back[1];
		result[2] = false;
	}
	return result;
}
