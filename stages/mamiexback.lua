function onCreate()
	-- background shit
	makeLuaSprite('mamiexBG', 'mamiexBG', -1350, -230);
	setLuaSpriteScrollFactor('mamiexBG', 0.9, 0.9);

	makeLuaSprite('HOLYfloor', 'HOLYfloor', -650, 600);
	setLuaSpriteScrollFactor('HOLYfloor', 0.9, 0.9);
	scaleObject('HOLYfloor', 0,9, 0.9);

	addLuaSprite('mamiexBG', false);
	addLuaSprite('HOLYfloor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end