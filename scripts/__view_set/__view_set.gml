/**
	@function		__view_set(prop, index, val)
	@description	GM2 compatibility
	@param			{real} prop		Unknown
	@param			{real} index	Unknown
	@param			{any} val		Unknown
	@returns		{real}
*/
function __view_set(prop, index, val) {
	__view_set_internal(prop, index, val);
	return __view_get(prop, index);
}
