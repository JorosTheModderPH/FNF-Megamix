function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg_week_3_sky', -274, -137);
	setScrollFactor('bg', 0.1, 0.1);
	scaleObject('bg', 1.5, 1.5);
	
	makeLuaSprite('city', 'bg_week_3_city', -250, 310);
	setScrollFactor('city', 0.2, 0.2);
	scaleObject('city', 1.4, 1.4);
	
	makeLuaSprite('streetBehind', 'behindTrain', -140, 50);

	makeLuaSprite('station', 'bg_week_3', -270, 15);
	scaleObject('station', 1.5, 1.5);

    makeAnimatedLuaSprite('trainBop', 'boppers', -250, 355)
    addAnimationByPrefix('trainBop', 'boping', 'bop', 24, true)
	scaleObject('trainBop', 1.5, 1.5);

	makeLuaSprite('street', 'bg_week_3_street', -270, 15);
	scaleObject('street', 1.5, 1.5);

	addLuaSprite('bg', false);
	addLuaSprite('city', false);
	addLuaSprite('streetBehind', false);
	addLuaSprite('station', false);
	addLuaSprite('trainBop', false);
	addLuaSprite('phillyTrain', false);
	addLuaSprite('street', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end