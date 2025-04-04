/**
	@description	GM2 compatibility
	@param			{real} prop		Unknown
	@param			{real} index	Unknown
	@param			{any} val		Unknown
	@returns		{real}
*/
function __view_set_internal(prop, index, val) {
	var res = -1;
	var cam = view_get_camera(index);
	switch (prop) {
		case e__VW.XView:
			camera_set_view_pos(cam, val, camera_get_view_y(cam));
			break;
		case e__VW.YView:
			camera_set_view_pos(cam, camera_get_view_x(cam), val);
			break;
		case e__VW.WView:
				camera_set_view_size(cam, val, camera_get_view_height(cam));
				break;
		case e__VW.HView:
			camera_set_view_size(cam, camera_get_view_width(cam), val);
			break;
		case e__VW.Angle:
			camera_set_view_angle(cam, val);
			break;
		case e__VW.HBorder: 
			camera_set_view_border(cam, val, camera_get_view_border_y(cam));
			break;
		case e__VW.VBorder:
			camera_set_view_border(cam, camera_get_view_border_x(cam), val);
			break;
		case e__VW.HSpeed: 
			camera_set_view_speed(cam, val, camera_get_view_speed_y(cam));
			break;
		case e__VW.VSpeed:
			camera_set_view_speed(cam, camera_get_view_speed_x(cam), val);
			break;
		case e__VW.Object:
			camera_set_view_target(cam, val);
			break;
		case e__VW.Visible:
			res = view_set_visible(index, val);
			break;
		case e__VW.XPort:
			res = view_set_xport(index, val);
			break;
		case e__VW.YPort:
			res = view_set_yport(index, val);
			break;
		case e__VW.WPort:
			res = view_set_wport(index, val);
			break;
		case e__VW.HPort:
			res = view_set_hport(index, val);
			break;
		case e__VW.Camera:
			res = view_set_camera(index, val);
			break;
		case e__VW.SurfaceID:
			res = view_set_surface_id(index, val);
			break;
	}
	return 0;
}
