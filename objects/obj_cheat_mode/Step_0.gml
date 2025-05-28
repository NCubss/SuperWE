monitor_ext = [];
for (var i = 0; i < array_length(monitor); i++) {
	var split = string_split(monitor[i], ".");
	if (array_length(split) == 0) continue;
	var ext = { text: "", color: c_white };
	switch (split[0]) {
		case "global":
			if (array_length(split) == 1) {
				exit;
			}
			var value = 0;
			for (var j = 1; j < array_length(split) + 1; j++) {
				if (value == undefined) {
					ext.color = c_red;
					break;
				}
				if (j > array_length(split)) break;
				if (j == 1) {
					value = global[$ split[j]];
				} else if (typeof(value) == "struct") {
					value = value[$ split[j]];
				} else {
					value = undefined;
				}
			}
			ext.text = $"{monitor[i]} = {value}";
			break;
		default:
			var obj = asset_get_index(split[0]);
			switch (asset_get_type(obj)) {
				case asset_object:
					if (array_length(split) == 1) {
						var inst_count = instance_number(obj);
						ext.text = $"{monitor[i]} = {inst_count}";
						if (inst_count == 0) {
							ext.color = c_red;
						}
					} else {
						var value = 0;
						for (var j = 1; j < array_length(split) + 1; j++) {
							if (value == undefined) {
								ext.color = c_red;
								break;
							}
							if (j > array_length(split)) break;
							if (j == 1) {
								value = variable_instance_get(obj.id, split[j]);
							} else if (typeof(value) == "struct") {
								value = value[$ split[j]];
							} else {
								value = undefined;
							}
						}
						ext.text = $"{monitor[i]} = {value}";
					}
					break;
				default:
					ext.color = c_red;
					ext.text = $"{monitor[i]} = <Unsupported asset>";
					break;
			}
			break;
	}
	array_push(monitor_ext, ext);
}