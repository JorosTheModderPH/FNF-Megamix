function onCreate()
   if boyfriendName == 'playable_skid_and_pump' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'playable_skid_and_pump'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end
end