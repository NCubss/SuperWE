/**
	@function		load_b64_json(filename)
	@description	Load a Base64-encoded JSON file
	@param			{string} filename	File path
	@returns		{any | real}
*/
function load_b64_json(filename) {
	var result = verify_pub(filename);
	if (typeof(result) == "string") {
		// This used json_decode() which returns a DS map.
		// Nowadays, structs are used in favor of DS maps since they are much
		// simpler to use. So we are using json_parse(), which returns a struct
		// (or array) instead.
		return json_parse(base64_decode(string_copy(result, 1, string_length(result) - 40)));
	} else {
		// Failed
		return 0;
	}
}
