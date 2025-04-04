/**
	@description	GM2 compatibility
	@param			{real} prop		Unknown
	@param			{real} index	Unknown
	@returns		{real}
*/
function __view_get(prop, index) {
	var res = -1;
	var cam = view_get_camera(index); 
	switch (prop) {
		case e__VW.XView:
			res = camera_get_view_x(cam);
			break;
		case e__VW.YView:
			res = camera_get_view_y(cam);
			break;
		case e__VW.WView:
			res = camera_get_view_width(cam);
			break;
		case e__VW.HView:
			res = camera_get_view_height(cam);
			break;
		case e__VW.Angle:
			res = camera_get_view_angle(cam);
			break;
		case e__VW.HBorder:
			res = camera_get_view_border_x(cam);
			break;
		case e__VW.VBorder:
			res = camera_get_view_border_y(cam);
			break;
		case e__VW.HSpeed:
			res = camera_get_view_speed_x(cam);
			break;
		case e__VW.VSpeed:
			res = camera_get_view_speed_y(cam);
			break;
		case e__VW.Object:
			res = camera_get_view_target(cam);
			break;
		case e__VW.Visible:
			res = view_get_visible(index);
			break;
		case e__VW.XPort:
			res = view_get_xport(index);
			break;
		case e__VW.YPort:
			res = view_get_yport(index);
			break;
		case e__VW.WPort:
			res = view_get_wport(index);
			break;
		case e__VW.HPort:
			res = view_get_hport(index);
			break;
		case e__VW.Camera:
			res = view_get_camera(index);
			break;
		case e__VW.SurfaceID:
			res = view_get_surface_id(index);
			break;
	}
	return res;
}
