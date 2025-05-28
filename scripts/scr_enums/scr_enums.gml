/// @description	Represents all game styles.
enum GameStyle {
	/// Super Mario Bros.
	SMB = 0,
	/// Super Mario Bros. 3
	SMB3 = 1,
	/// Super Mario World
	SMW = 2,
	/// New Super Mario Bros. U
	NSMBU = 3
}

/// @description	Represents all game themes.
enum GameTheme {
	OVERWORLD,
	UNDERGROUND,
	CASTLE,
	UNDERWATER,
	DESERT,
	SNOW,
	SKY,
	AIRSHIP,
	MANSION,
	FOREST,
	AUTUMN,
	BEACH,
	MOUNTAIN
}

/// @description	Represents a choosable player.
enum Player {
	MARIO,
	LUIGI,
	TOAD,
	TOADETTE
}

/// @description	Represents a language in the game.
enum Language {
	SPANISH = 0,
	ENGLISH = 1,
	PORTUGUESE = 2,
	ITALIAN = 3,
	CHINESE = 4
}

/// @description	Represents an autoscroll speed.
enum AutoscrollSpeed {
	NONE,
	SLOW,
	NORMAL,
	FAST
}

/// @description	Represents the player's powerup.
enum Powerup {
	SMALL,
	SUPER,
	FIRE,
	RACCOON,
	FROG,
	HAMMER,
	SUPERBALL,
	P_BALLOON,
	PROPELLER,
	PENGUIN,
	ACORN,
	WEIRD,
	MEGA,
	LINK
}

#region World-Related

/// @description	Represents the path direction in a world tile.
enum Direction {
	UP,
	RIGHT,
	DOWN,
	LEFT
}

/// @description	Represents a variant ID.
enum Variant {
	/// Ground tile with no decoration
	GROUND_NONE = 0,
	/// Ground tile with the hill decoration
	GROUND_HILL = 1,
	/// Ground tile with the rock pillars decoration
	GROUND_ROCKS = 2,
	/// Ground tile with the Super Bell tree decoration
	GROUND_TREES = 3,
	/// Raised ground/island tile
	ISLAND = 4,
	/// Bridge tile
	BRIDGE = 5,
	/// End of path tile
	PATH_END = 6,
	/// Straight path tile
	PATH_STRAIGHT = 7,
	/// Sharp turning path tile
	PATH_SHARP_TURN = 8,
	/// 3-way junction path tile
	PATH_3WAY = 9,
	/// Round turning path tile
	PATH_ROUND_TURN = 10,
	/// Pipe tile
	PIPE = 11,
	/// Bonus house tile
	BONUS = 12,
	/// Level tile
	LEVEL = 13
}

/// @description	The world's game style. (only SMW is supported)
enum WorldStyle {
	SMW
}

/// @description	The world's theme.
enum WorldTheme {
	Overworld
}

#endregion

#region Course World

/// @description	Course World Tab Type
enum NMTab {
	FEATURED,
	POPULAR,
	NEWEST,
	SEARCH,
	STARRED,
	MY
}

/// @description	Course World API HTTP Request Type
enum NMRequestAPI {
	/// No request in progress
	FREE,
	/// Login (acquire session token)
	LOGIN,
	/// Detailed search
	SEARCH,
	/// Fetch level
	DOWNLOAD
}

/// @description	Course World Browser state
enum NMBrowserState {
	LOADING,
	LOADED,
	ERROR
}

/// @description	Course World Search Filters
enum NMFilter {
	LIKED,
	DISLIKED
}

/// @description	Course World Search Sorting
enum NMSort {
	NEWEST,
	OLDEST,
	MOST_POPULAR,
	LEAST_POPULAR
}

#endregion