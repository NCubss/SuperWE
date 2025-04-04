/**
	@description	Unknown (related to culling)
	@param			{real} cull_width	Unknown
	@param			{real} cull_height	Unknown
	@param			{real} arg2			Unknown
	@param			{real} arg3			Unknown
*/
function viewcull(cull_width, cull_height, arg2, arg3) {
	if (global.count_cull == arg2) {
	    instance_deactivate_region(
			(global.cull_previous_x - (cull_width / 2)),
			(global.cull_previous_y - (cull_height / 2)),
			cull_width, cull_height, true, false
		)
	    global.cull_previous_x = x
	    global.cull_previous_y = y
	    instance_activate_region(
			(x - (cull_width / 2)),
			(y - (cull_height / 2)),
			cull_width, cull_height, true
		)
	    if (arg3 == 1) {
	        show_debug_message(("Active instances : " + string(instance_count)))
		}
	    global.count_cull = 1
	} else {
	    global.count_cull += 1
	}
}
