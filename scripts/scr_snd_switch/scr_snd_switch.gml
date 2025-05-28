/**
	@description	Returns the sound that fits the current game style.
	@returns		{Asset.GMSound}
*/
function scr_snd_switch() {
	switch (global.style) {
		case GameStyle.SMB:
			return snd_SMB_switch;
		case GameStyle.SMB3:
			return snd_SMB3_switch;
		case GameStyle.SMW:
			return snd_warning;
		case GameStyle.NSMBU:
			return snd_NSMBU_switch;
	}
}