depth = -1000;
official = true;
selected_tab = noone;
state = NMBrowserState.LOADING;
error_text = "";
scroll = 0;
max_scroll = 0;

page_surfx = x;
page_surfy = y + 36;
page_surfw = 384;
page_surfh = 180;
page_surf = surface_create(page_surfw, page_surfh);
page_surf_matrix = matrix_build(
	-page_surfx, -page_surfy, 0,
	0, 0, 0,
	1, 1, 1
);

for (var i = 0; i < 6; i++) {
	var inst = instance_create_layer(
		i == NMTab.MY ? x + 326 : x + 1 + (i * 76),
		y + 12,
		"Browser", obj_nm_tab, { type: i }
	);
	if (i == NMTab.FEATURED) {
		selected_tab = inst.id;
	}
}
instance_create_layer(
	page_surfx + (page_surfw / 2),
	page_surfy + (page_surfh / 2),
	"Browser", obj_nm_loading
);

request = NMRequestAPI.LOGIN;
search_rating = 0;
show_debug_message("Logging in... ({0})", nm_login());