function onCreate()
	-- background shit
	makeLuaSprite('skyBG', 'limoSunset', -655, -375);
	setScrollFactor('skyBG', 0.1, 0.1);
	scaleObject('skyBG', 0.8, 0.8);

    makeAnimatedLuaSprite('bgLimo', 'bgLimo', -200, 480)
    addAnimationByPrefix('bgLimo', 'drive', 'BG limo0', 24, true)
	setScrollFactor('bgLimo', 0.4, 0.4);

    makeAnimatedLuaSprite('dancer', 'limoDancer', 850, 125)
    addAnimationByPrefix('dancer', 'funkydance', 'bg dancer sketch PINK', 24, true)
	setScrollFactor('dancer', 0.4, 0.4);

    makeAnimatedLuaSprite('dancer0', 'limoDancer', 1220, 125)
    addAnimationByPrefix('dancer0', 'funkydance1', 'bg dancer sketch PINK', 24, true)
	setScrollFactor('dancer0', 0.4, 0.4);

    makeAnimatedLuaSprite('dancer1', 'limoDancer', 1590, 125)
    addAnimationByPrefix('dancer1', 'funkydance2', 'bg dancer sketch PINK', 24, true)
	setScrollFactor('dancer1', 0.4, 0.4);

    makeAnimatedLuaSprite('dancer2', 'limoDancer', 1960, 125)
    addAnimationByPrefix('dancer2', 'funkydance3', 'bg dancer sketch PINK', 24, true)
	setScrollFactor('dancer2', 0.4, 0.4);

    makeAnimatedLuaSprite('dancer3', 'limoDancer', 2330, 125)
    addAnimationByPrefix('dancer3', 'funkydance4', 'bg dancer sketch PINK', 24, true)
	setScrollFactor('dancer3', 0.4, 0.4);

    makeAnimatedLuaSprite('dancerextra', 'limoDancer', 110, 125)
    addAnimationByPrefix('dancerextra', 'funkydance5', 'bg dancer sketch PINK', 24, true)
	setScrollFactor('dancerextra', 0.4, 0.4);

    makeAnimatedLuaSprite('pico', 'characters/soft_pico_blow_car', 490, 275)
    addAnimationByPrefix('pico', 'vibe', 'soft_pico hair blow CAR0', 24, true)
	scaleObject('pico', 0.6, 0.6);
	setScrollFactor('pico', 0.4, 0.4);

    makeAnimatedLuaSprite('limo', 'limoDrive', -120, 550)
    addAnimationByPrefix('limo', 'drive', 'Limo stage', 24, true)

	addLuaSprite('skyBG', false);
	addLuaSprite('bgLimo', false);
	addLuaSprite('dancer', false);
	addLuaSprite('dancer0', false);
	addLuaSprite('dancer1', false);
	addLuaSprite('dancer2', false);
	addLuaSprite('dancer3', false);
	addLuaSprite('dancerextra', false);
	addLuaSprite('pico', false);
	addLuaSprite('limo', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end