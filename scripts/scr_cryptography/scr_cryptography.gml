// Various functions related to cryptography and string manipulation

/**
	@description	Takes a byte from the given hex string and converts it into a real.
	@param			{string} hex_string		Hex string to extract from
	@param			{real} byte				Index of the byte (left-right)
	@returns		{real}
*/
function hex_string_byte(hex_string, byte) {
	var value = 0;
	var high_char = ord(string_char_at(hex_string, ((2 * byte) + 1)));
	var low_char = ord(string_char_at(hex_string, ((2 * byte) + 2)));
	// Process high nibble
	if (high_char >= 48 && high_char <= 57) { // 0-9
		value += (high_char - 48) << 4;
	} else if (high_char >= 97 && high_char <= 102) { // a-f
		value += (high_char - 87) << 4;
	} else if (high_char >= 65 && high_char <= 70) { // A-F
		value += (high_char - 55) << 4;
	}
	// Process low nibble
	if (low_char >= 48 && low_char <= 57) { // 0-9
		value += (low_char - 48);
	} else if (low_char >= 97 && low_char <= 102) { // a-f
		value += (low_char - 87);
	} else if (low_char >= 65 && low_char <= 70) { // A-F
		value += (low_char - 55);
	}
	return value;
}


/**
	@description	Computes a SHA-1 HMAC for a given key and message.
	@param			{string} key			The key to secure the hash with
	@param			{Id.Buffer} message		Message to hash
	@returns		{string}
*/
function sha1_buffer_utf8_hmac(key, message) {
	var block_size, hash_size, inner_size, outer_size, key_buffer,
		inner_buffer, outer_buffer, sha1_key, i, key_byte, sha1_inner, result;
	block_size = 64;
	_hash_size = 20;
	_inner_size = (block_size + buffer_get_size(message));
	_outer_size = (block_size + _hash_size);
	key_buffer = buffer_create(block_size, buffer_fixed, 1);
	_inner_buffer = buffer_create(_inner_size, buffer_fixed, 1);
	_outer_buffer = buffer_create(_outer_size, buffer_fixed, 1);
	if (string_byte_length(key) > block_size) {
	    _sha1_key = sha1_string_utf8(key);
	    for (_i = 0; _i < _hash_size; _i++) {
	        buffer_write(key_buffer, buffer_u8, hex_string_byte(_sha1_key, _i));
		}
	} else {
	    buffer_write(key_buffer, buffer_text, key);
	}
	for (_i = 0; _i < block_size; _i++) {
	    key_byte = buffer_peek(key_buffer, _i, buffer_u8);
	    buffer_poke(_inner_buffer, _i, buffer_u8, (54 ^ key_byte));
	    buffer_poke(_outer_buffer, _i, buffer_u8, (92 ^ key_byte));
	}
	buffer_seek(_inner_buffer, buffer_seek_start, block_size);
	buffer_copy(message, 0, buffer_get_size(message), _inner_buffer, buffer_tell(_inner_buffer));
	_sha1_inner = buffer_sha1(_inner_buffer, 0, _inner_size);
	buffer_seek(_outer_buffer, buffer_seek_start, block_size);
	for (_i = 0; _i < _hash_size; _i++) {
		buffer_write(_outer_buffer, buffer_u8, hex_string_byte(_sha1_inner, _i));
	}
	_result = buffer_sha1(_outer_buffer, 0, _outer_size);
	buffer_delete(key_buffer);
	buffer_delete(_inner_buffer);
	buffer_delete(_outer_buffer);
	return _result;
}

/**
	@description	Verifies the file with the given filename.
					It gets the HMAC-SHA1 from the last 40 bytes of the file
					buffer, then verifies the file by checking if the HMAC of
					the file (without its HMAC) matches with the actual HMAC.
					Returns the hashless file as a buffer if it succeeded,
					returns 0 otherwise.
	@param			{string} filename	File path
	@returns		{Id.Buffer | real}
*/
function verify_pub(filename) {
	var buffer = buffer_load(filename);
	buffer_seek(buffer, buffer_seek_end, 41);
	//var expected_hash = string_copy(_string, (string_length(_string) - 39), 40);
	var expected_hash = buffer_read(buffer, buffer_text);
	//expected_hash = string_delete(expected_hash, -1, 1); 
	var hashless_buffer = buffer_create(buffer_get_size(buffer) - 41, buffer_fixed, 1);
	buffer_copy(buffer, 0, buffer_get_size(hashless_buffer), hashless_buffer, 0);
	//var new_hash = buffer_sha1(
	//var hashless_string = string_copy(_string, 1, (string_length(_string) - 40));
	var new_hash = sha1_buffer_utf8_hmac(global.drez, hashless_buffer);
	show_debug_message($"Last 10 hashless bytes: {buffer_peek(hashless_buffer, buffer_get_size(hashless_buffer) - 10, buffer_text)}");
	show_debug_message($"Expecting {expected_hash}, actually {new_hash}");
	buffer_delete(buffer);
	if (expected_hash == new_hash) {
	    return hashless_buffer;
	}
	buffer_delete(hashless_buffer);
	return 0;
}