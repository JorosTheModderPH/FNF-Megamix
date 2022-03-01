function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pixel-dead-b'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel-b'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel-b'); --put in mods/music/
end