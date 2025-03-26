/**
	@function		__background_set(prop, bind, val)
	@description	Unknown
	@param			{any} prop	Unknown
	@param			{any} bind	Unknown
	@param			{any} val	Unknown
	@returns		{real}
*/
function __background_set(prop, bind, val) {
	var back_info = __background_get_element(bind);
	__background_set_internal(prop, bind, val, back_info);
	return __background_get_internal(prop, bind, back_info);
}
