/**
	@description	Returns the depth of the specified object.
	@param			{real} obj	The index of the object to check.
	@returns		{real}
*/
function object_get_depth(obj) {
	var ret = 0;
	if (obj >= 0) && (obj < array_length(global.__objectID2Depth)) {
		ret = global.__objectID2Depth[obj];
	}
	return ret;
}
