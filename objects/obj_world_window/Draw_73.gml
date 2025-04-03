draw_self();
switch (array_length(object.variants)) {
	case 1:
		sprite_index = spr_windows_1;
		break;
	case 2:
		sprite_index = spr_windows_2;
		break;
	case 3:
		sprite_index = spr_windows_3;
		break;
	case 4:
		sprite_index = spr_windows_4;
		break;
	case 5:
		sprite_index = spr_windows_5;
		break;
	default:
		throw("More than 5 variants are currently unsupported!");
		break;
}