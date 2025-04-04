/**
	@description    Start shaking the screen for the given amount of time
	@param			{real} time		The length of the shaking
	@returns		{undefined}
*/
function init_shake(time) {
	if (instance_exists(obj_levelmanager)) {
	    if (obj_levelmanager.shake_time == 0) {
	        obj_levelmanager.shake_long = time;
	        obj_levelmanager.alarm[11] = 1;
	    }
	}
}
