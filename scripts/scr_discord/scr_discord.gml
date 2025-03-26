#macro dcw_noone "\\u00ad"

/**
	@function		discord_free_app()
	@description	Unknown
	@returns		{undefined}
*/
function discord_free_app() {
	external_call(global.__d_free);
}

/**
	@function		discord_free_dll()
	@description	Unknown
	@returns		{undefined}
*/
function discord_free_dll() {
	external_free("discord-rpc-main.dll");
}

/**
	@function		discord_init_app()
	@description	Unknown
	@param			{any} arg0   Unknown
	@returns		{any}
*/
function discord_init_app(arg0) {
	return external_call(global.__d_init, arg0);
}

/**
	@function		discord_update_presence(arg0, arg1, arg2, arg3)
	@description	Updates the Discord presence via NekoPresence
	@param			{any} arg0   Unknown
	@param			{any} arg1   Unknown
	@param			{any} arg2   Unknown
	@param			{any} arg3   Unknown
	@returns		{undefined}
*/
function discord_update_presence(arg0, arg1, arg2, arg3) {
	external_call(global.__d_update, arg0, arg1, arg2, arg3)
}

/**
	@function		discord_webhook(url_id, url_token)
	@description	Creates a new Discord webhook object and returns the webhook
					object ID
	@param			{string} url_id		Webhook ID
	@param			{string} url_token	Webhook token
	@returns		{Id.Instance} 
*/
function discord_webhook(url_id, url_token) {
	var _inst = instance_create_depth(0,0,0,obj_dcw);
	_inst.url_id = url_id;
	_inst.url_token = url_token;
	with (_inst) {
		event_user(0);
	}
	return _inst;
}