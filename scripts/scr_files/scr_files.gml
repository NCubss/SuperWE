/**
	@description	Load a Base64-encoded JSON file
	@param			{string} filename	File path
	@returns		{any | real}
*/
function load_b64_json(filename) {
	var result = verify_pub(filename);
	if (buffer_exists(result)) {
		// This used json_decode() which returns a DS map.
		// Nowadays, structs are used in favor of DS maps since they are much
		// simpler to use. So we are using json_parse(), which returns a struct
		// (or array) instead.
		return json_parse(base64_decode_buffer(result));
	} else {
		// Failed
		return 0;
	}
}

function base64_decode_buffer(buf) {
	if (!buffer_exists(buf)) {
		throw "Can't decode base64 buffer: buffer does not exist";
	}
	var chunk_size = 4096;
	var total_size = buffer_get_size(buf);
	var result = "";
	buffer_seek(buf, buffer_seek_start, 0);
	// read buffer in chunks to avoid a stack overflow error
	for (var pos = 0; pos < total_size; pos += chunk_size) {
		var remaining = total_size - pos;
		var read_size = min(chunk_size, remaining);
		var chunk = buffer_create(read_size, buffer_fixed, 1);
		buffer_copy(buf, pos, read_size, chunk, 0);
		var chunk_str = buffer_read(chunk, buffer_text);
		var decoded = base64_decode(chunk_str);
		result += decoded;
		buffer_delete(chunk);
	}
	return result;
}
