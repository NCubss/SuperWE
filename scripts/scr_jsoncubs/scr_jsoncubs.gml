// JSONCubs (my own reimplementation of the json functions, for buffers)

#region Internal functions (shouldn't be used out of this script)

/// @description You shouldn't use this function
// parse object
function _jsoncubs_object(buf) {
	var result = {};
	var key = "";
	var in_key = false;
	var in_value = false;
	for (
		var byte;
		!(!in_key && buffer_peek(buf, 0, buffer_u8) != ord("}"));
		buffer_seek(buf, buffer_seek_relative, 1);
	) {
		byte = buffer_peek(buf, 0, buffer_u8);
		if (string_trim(chr(byte) == "") && !in_key) {
			continue;
		}
		switch (byte) {
			case ord("\""):
				if (buffer_peek(buf, -1, buffer_u8) != ord("\\")) {
					in_key = !in_key;
				} else {
					key += "\"";
				}
				break;
			case ord(":"):
				if (in_key) {
					key += ":";	
				} else {
					in_value = true;
				}
				break;
			case ord(","):
				if (in_key) {
					key += ",";
				}
					in_value = false;
			
		}
	}
}

function _jsoncubs_string(buf) {
	show_debug_message(buffer_tell(buf));
	buffer_seek(buf, buffer_seek_relative, 1);
	var byte = buffer_read(buf, buffer_u8);
	var result = buffer_create(0, buffer_grow, 1);
	while (byte != ord("\"")) {
		show_debug_message($"Byte: {byte}   Character: {chr(byte)}");
		if (byte == ord("\\")) {
			buffer_seek(buf, buffer_seek_relative, 1);
		}
		buffer_write(result, buffer_u8, buffer_read(buf, buffer_u8));
		byte = buffer_read(buf, buffer_u8);
	}
	buffer_seek(buf, buffer_seek_relative, 1);
	buffer_seek(result, buffer_seek_start, 0);
	return buffer_read(result, buffer_text);
}

#endregion

/**
	@description	Parses a JSON buffer into a valid GML representation.
	@param			{Id.Buffer}	json	The JSON buffer to parse.
	@returns		{struct | array | string | real | bool | undefined}
*/
function jsoncubs_parse(json) {
	var path = [];
	var key = -1;
	var value = -1;
	var result = undefined;
	buffer_seek(json, buffer_seek_start, 0);
	repeat (buffer_get_size(json)) {
		var byte = buffer_peek(json, 0, buffer_u8);
		var char = chr(byte);
		if (key != -1 && buffer_exists(key)) {
			buffer_write(key, buffer_u8, byte);
			buffer_seek(key, buffer_seek_relative, 1);
		} else if (value != -1 && buffer_exists(value)) {
			buffer_write(value, buffer_u8, byte);
			buffer_seek(key, buffer_seek_relative, 1);
		} else {
			switch (char) {
				case "{":
					if (array_length(path) == 0) {
						result = {};
					} else {
						for (var i = 0; i < array_length(path); i++) {
							
						}
					}
			}
		}
	}
}