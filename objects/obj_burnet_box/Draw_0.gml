var fire_height;
image_index = fire_rotation;
switch (global.style) {
	case GameStyle.SMB:
		sprite_index = spr_SMB_burnet_box;
		fire_sprite = spr_SMB_soplete;
		fire_index += 0.25;
		fire_height = 43;
		break;
	case GameStyle.SMB3:
		sprite_index = spr_SMB3_burnet_box;
		fire_sprite = spr_SMB3_soplete;
		fire_index += 0.25;
		fire_height = 43;
		break;
	case GameStyle.SMW:
		sprite_index = spr_SMW_burnet_box;
		fire_sprite = spr_soplete;
		fire_index += 0.25;
		fire_height = 43;
		break;
	case GameStyle.NSMBU:
		sprite_index = spr_NSMBU_burnet_box;
		fire_sprite = spr_NSMBU_soplete;
		fire_index += 0.5;
		fire_height = fire_rotation == Direction.DOWN ? 45 : 44;
		break;
}
draw_self();
if (fire) {
	draw_sprite_part(fire_sprite, fire_index, 0, 0, 16, fire_height, 16, 0);
	switch (fire_rotation) {
		case Direction.UP:
			draw_sprite_general(fire_sprite, fire_index, 0, 0, 16, fire_height, x, y - 48, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
			break;
		case Direction.RIGHT:
			draw_sprite_general(fire_sprite, fire_index, 0, 0, 16, fire_height, x + 64, y, 1, 1, 270, c_white, c_white, c_white, c_white, 1);
			break;
		case Direction.DOWN:
			draw_sprite_general(fire_sprite, fire_index, 0, 0, 16, fire_height, x + 16, y + 64, 1, 1, 180, c_white, c_white, c_white, c_white, 1);
			break;
		case Direction.LEFT:
			draw_sprite_general(fire_sprite, fire_index, 0, 0, 16, fire_height, x - 48, y + 16, 1, 1, 90, c_white, c_white, c_white, c_white, 1);
			break;
	}
}