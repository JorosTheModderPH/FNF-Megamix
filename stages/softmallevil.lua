function onCreate()
	-- background shit
	makeLuaSprite('bg', 'evilBG', -400, -500);
	setScrollFactor('bg', 0.2, 0.2);
	scaleObject('bg', 0.8, 0.8);
	
	makeLuaSprite('evilTree', 'evilTree', 300, -300);
	setScrollFactor('evilTree', 0.2, 0.2);
	
	makeLuaSprite('evilSnow', 'evilSnow', -200, 700);

	addLuaSprite('bg', false);
	addLuaSprite('evilTree', false);
	addLuaSprite('evilSnow', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end