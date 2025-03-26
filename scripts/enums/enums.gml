/**
	@enum			GameStyle
	@description	Represents all game styles.
*/
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

/**
	@enum			GameTheme
	@description	Represents all game themes.
*/
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

/**
	@enum			Player
	@description	Represents a choosable player.
*/
enum Player {
	MARIO,
	LUIGI,
	TOAD,
	TOADETTE
}
/**
	@enum			Language
	@description	Represents a language in the game.
*/
enum Language {
	SPANISH = 0,
	ENGLISH = 1,
	PORTUGUESE = 2,
	ITALIAN = 3,
	CHINESE = 4
}

/**
	@enum			AutoscrollSpeed
	@description	Represents an autoscroll speed.
*/
enum AutoscrollSpeed {
	NONE,
	SLOW,
	NORMAL,
	FAST
}

/**
	@enum			Powerup
	@description	Represents the player's powerup.
*/
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