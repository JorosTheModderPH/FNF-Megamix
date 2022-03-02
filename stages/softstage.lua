function onCreate()
	-- background shit
	makeLuaSprite('bg', 'alleybg', -600, -200);
	setScrollFactor('bg', 1, 1);
	
	makeLuaSprite('stageFront', 'alleyfloor', -630, -200);
	scaleObject('stageFront', 1, 1);
	setScrollFactor('stageFront', 1, 1);
	
	makeLuaSprite('bgstuff', 'floor_shits', -630, -200);
	setScrollFactor('bgstuff', 1, 1);

	makeLuaSprite('stageCurtains', 'alleycat', -200, -100);
	scaleObject('stageCurtains', 0.9, 0.9);
	setScrollFactor('stageCurtains', 1.3, 1.3);

	addLuaSprite('bg', false);
	addLuaSprite('stageFront', false);
	addLuaSprite('bgstuff', false);
	addLuaSprite('stageCurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end