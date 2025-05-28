if (ds_map_find_value(async_load, "status") != 0) exit;
var status = ds_map_find_value(async_load, "http_status");
var data = json_parse(ds_map_find_value(async_load, "result"));
show_debug_message("Received response with status code {0}", status);
switch (request) {
	case NMRequestAPI.LOGIN:
		show_debug_message("Received response for login");
		// exit if error occurred for now
		if (struct_exists(data, "error_type")) {
			show_debug_message("Error happened during login! {0} {1}", data.error_type, data.message)
			break;
		}	
		// set session token
		if (struct_exists(data, "auth_code")) {
			global.nm.session = data.auth_code;
		}
		// set discord id
		if (struct_exists(data, "id")) {
			global.nm.discord_id = data.id;
		}
		request = NMRequestAPI.SEARCH;
		show_debug_message("Searching... ({0})", nm_search(1,,,true));
		exit;
	case NMRequestAPI.SEARCH:
		show_debug_message("Received response for search");
		instance_destroy(obj_nm_loading);
		show_debug_message(array_length(data.result));
		for (var i = 0; i < array_length(data.result); i++) {
			instance_create_layer(x + 67, y + 40 + (i * 62), "Browser", obj_nm_level_card, {
				title: data.result[i].name,
				author: data.result[i].author,
				style: real(data.result[i].entorno),
				theme: real(data.result[i].apariencia),
				likes: real(data.result[i].likes),
				dislikes: real(data.result[i].dislikes),
				attempts: real(data.result[i].intentos),
				tag1: string_split(data.result[i].etiquetas, ",")[0],
				tag2: string_split(data.result[i].etiquetas, ",")[1],
				featured: bool(real(data.result[i].featured)),
				cleared: data.result[i].user_data.completed == "yes",
				liked: search_rating == 1 && data.result[i].user_data.liked == "1",
				disliked: search_rating == -1 && data.result[i].user_data.liked == "1"
			});
		}
		max_scroll = (array_length(data.result) * 62) - (page_surfh * 0.75);
		break;
}
request = NMRequestAPI.FREE;