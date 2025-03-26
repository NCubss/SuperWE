/**
	@function		key_to_string(key)
	@description	Converts the given keycode into a string representation
	@param			{real} key	Keycode
	@returns		{string}
*/
function key_to_string(key) {
	switch (key) {
	    case vk_backspace:
	        return "Backspace";
	    case vk_tab:
	        return "Tab";
	    case 12:
	        return "Pad Middle";
	    case vk_enter:
	        return "Enter";
	    case vk_shift:
	        return "Shift";
	    case vk_control:
	        return "Ctrl";
	    case vk_alt:
	        return "Alt";
	    case vk_pause:
	        return "Pause";
	    case 2:
	        return "Caps Lock";
	    case vk_escape:
	        return "Escape";
	    case vk_space:
	        return "Space";
	    case 33:
	        return "Pad Up";
	    case 34:
	        return "Pad Down";
	    case vk_end:
	        return "End";
	    case vk_home:
	        return "Home";
	    case vk_left:
	        return "Left";
	    case vk_up:
	        return "Up";
	    case vk_right:
	        return "Right";
	    case vk_down:
	        return "Down";
	    case 44:
	        return "Pad Screen";
	    case vk_insert:
	        return "Insert";
	    case vk_delete:
	        return "Delete";
	    case 91:
	        return "L Trigger";
	    case 92:
	        return "r-wind";
	    case 93:
	        return "menu";
	    case 96:
	        return "pad 0";
	    case 97:
	        return "pad 1";
	    case 98:
	        return "pad 2";
	    case 99:
	        return "pad 3";
	    case 100:
	        return "pad 4";
	    case 101:
	        return "pad 5";
	    case 102:
	        return "pad 6";
	    case 103:
	        return "pad 7";
	    case 104:
	        return "pad 8";
	    case 105:
	        return "pad 9";
	    case 106:
	        return "pad *";
	    case 107:
	        return "pad +";
	    case 109:
	        return "pad -";
	    case 110:
	        return "pad .";
	    case 111:
	        return "pad /";
	    case 112:
	        return "F1";
	    case 113:
	        return "F2";
	    case 114:
	        return "F3";
	    case 115:
	        return "F4";
	    case 116:
	        return "F5";
	    case 117:
	        return "F6";
	    case 118:
	        return "F7";
	    case 119:
	        return "F8";
	    case 120:
	        return "F9";
	    case 121:
	        return "F10";
	    case 122:
	        return "F11";
	    case 123:
	        return "F12";
	    case 144:
	        return "n-lock";
	    case 145:
	        return "s-lock";
	    default:
	        return chr(key);
	}
}
