// Functions related to loading and saving levels, file manipulation

/**
	@description	Saves the given string to the given file path
	@param			{string} filename	File path to save in
	@param			{string} contents	Contents to save into the file
	@returns		{undefined}
*/
function save_to_file(filename, contents) {
	var buffer = buffer_create((string_byte_length(contents) + 1), buffer_fixed, 1);
	buffer_write(buffer, buffer_string, contents);
	buffer_save(buffer, filename);
	buffer_delete(buffer);
}
