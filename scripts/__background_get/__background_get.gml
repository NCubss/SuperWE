/**
	@description	Unknown
	@param			{real} prop			Unknown
	@param			{Array} bind		Unknown
	@returns		{real}
*/
function __background_get(prop, bind) {
	return __background_get_internal(prop, bind, __background_get_element(bind));
}
