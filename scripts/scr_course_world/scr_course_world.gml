/**
	@description	Generates a body to use for a Course World Detailed Search request.
	@param			{real} page				Page number
	@param			{real} [filter]			Filter by liked or disliked
	@param			{real} [sort]			Sort by oldest, popular or least popular
	@param			{bool} [featured]		Featured Courses
	@param			{string} [title]		Course Title
	@param			{string} [author]		Course Author
	@param			{real} [style]			Game Style
	@param			{real} [theme]			Game Theme
	@param			{real} [difficulty]		Difficulty
	@param			{real} [last]			Courses posted in the last n days
	@param			{bool} [cleared]		Courses which this user has cleared
	@param			{string} [tags]			Courses with these tags
	@returns		{string}
*/
function nm_search_body(
	page,
	filter = undefined,
	sort = undefined,
	featured = undefined,
	title = undefined,
	author = undefined,
	style = undefined,
	theme = undefined,
	difficulty = undefined,
	last = undefined,
	cleared = undefined,
	tags = undefined
) {
	var _filter = "";
	switch (filter) {
		case NMFilter.LIKED:
			_filter = string("&liked={0}&filter=likesTD", global.nm.discord_id);
			break;
		case NMFilter.DISLIKED:
			_filter = string("&liked={0}&filter=dislikesTL", global.nm.discord_id);
			break;
	}
	var _sort = "";
	switch (sort) {
		case NMSort.MOST_POPULAR:
			_sort = "&sort=popular";
			break;
		case NMSort.LEAST_POPULAR:
			_sort = "&sort=notpopular";
			break;
		case NMSort.OLDEST:
			_sort = "&sort=antiguos";
			break;
	}
	var _featured = "";
	if (!is_undefined(featured)) {
		if (featured) {
			_featured = "&featured=promising";
		} else {
			_featured = "&featured=notpromising";
		}
	}
	var _title = "";
	if (!is_undefined(title) && title != "") {
		_title = string("&title={0}", title);
	}
	var _author = "";
	if (!is_undefined(author) && author != "") {
		_author = string("&title={0}", author);
	}
	var _style = "";
	if (!is_undefined(style)) {
		_style = string("&aparience={0}", style);
	}
	var _theme = "";
	if (!is_undefined(theme)) {
		_theme = string("&entorno={0}", theme);
	}
	var _difficulty = "";
	if (!is_undefined(difficulty)) {
		_difficulty = string("&dificultad={0}", difficulty);
	}
	var _last = "";
	if (!is_undefined(last)) {
		_last = string("&last={0}d", last);
	}
	var _cleared = "";
	if (!is_undefined(cleared) && cleared) {
		_cleared = "&historial=0";
	}
	var _tags = "";
	if (!is_undefined(tags)) {
		_tags = string("&tags={0}", tags);
	}
	return string(
		"token={0}&auth_code={1}&discord_id={2}&page={3}{4}{5}{6}{7}{8}{9}{10}{11}{12}{13}",
		global.nm.api_key,
		global.nm.session,
		global.nm.discord_id,
		page,
		_filter,
		_sort,
		_featured,
		_title,
		_author,
		_style,
		_theme,
		_difficulty,
		_last,
		_cleared,
		_tags
	);
}

/**
	@description	Generates a body to use for a Course World Login request.
	@returns		{string}
*/
function nm_login_body() {
	return string(
		"token={2}&alias={0}&password={1}",
		global.nm.username,
		global.nm.password,
		global.nm.api_key
	);
}

/**
	@description	Sends a Login request to the Course World servers.
	@returns 		{real}	The HTTP request ID.
*/
function nm_login() {
	var headers = ds_map_create();
	ds_map_set(headers, "Content-Type", "application/x-www-form-urlencoded");
	return http_request(
		string("{0}/online/user/login", global.nm.api_url),
		"POST",
		headers,
		nm_login_body()
	);
}

/**
	@description	Sends a Detailed Search request to the Course World servers.
	@param			{real} page				Page number
	@param			{real} [filter]			Filter by liked or disliked
	@param			{real} [sort]			Sort by oldest, popular or least popular
	@param			{bool} [featured]		Featured Courses
	@param			{string} [title]		Course Title
	@param			{string} [author]		Course Author
	@param			{real} [style]			Game Style
	@param			{real} [theme]			Game Theme
	@param			{real} [difficulty]		Difficulty
	@param			{real} [last]			Courses posted in the last n days
	@param			{bool} [cleared]		Courses which this user has cleared
	@param			{string} [tags]			Courses with these tags
	@returns 		{real}					The HTTP request ID.
*/
function nm_search(
	page,
	filter = undefined,
	sort = undefined,
	featured = undefined,
	title = undefined,
	author = undefined,
	style = undefined,
	theme = undefined,
	difficulty = undefined,
	last = undefined,
	cleared = undefined,
	tags = undefined
) {
	var headers = ds_map_create();
	ds_map_set(headers, "Content-Type", "application/x-www-form-urlencoded");
	return http_request(
		string("{0}/stages/detailed_search", global.nm.api_url),
		"POST",
		headers,
		nm_search_body(page, filter, sort, featured, title, author, style, theme, difficulty, last, cleared, tags)
	);
}

function nm_page_render_start() {
	surface_set_target(obj_nm_browser.page_surf);
	matrix_set(matrix_world, obj_nm_browser.page_surf_matrix);
}

function nm_page_render_end() {
	matrix_set(matrix_world, _matrix);
	surface_reset_target();
}