function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bgWalls', -1000, -500);
	setScrollFactor('bg', 0.2, 0.2);
	scaleObject('bg', 0.8, 0.8);

    makeAnimatedLuaSprite('upperBoppers', 'angrybogosbinted', -240, -90)
    addAnimationByPrefix('upperBoppers', 'bop', 'Upper Crowd Bob', 24, true)
	setScrollFactor('upperBoppers', 0.33, 0.33);
	scaleObject('upperBoppers', 0.85, 0.85);
	
	makeLuaSprite('bgEscalator', 'bgEscalator', -1100, -600);
	setScrollFactor('bgEscalator', 0.3, 0.3);
	scaleObject('bgEscalator', 0.9, 0.9);
	
	makeLuaSprite('tree', 'christmasTree', 370, -250);
	setScrollFactor('tree', 0.4, 0.4);

    makeAnimatedLuaSprite('bottomBoppers', 'bopit', -150, -5)
    addAnimationByPrefix('bottomBoppers', 'bop', 'Bottom Level Boppers', 24, true)
	setScrollFactor('bottomBoppers', 0.9, 0.9);
	scaleObject('bottomBoppers', 1, 1);
	
	makeLuaSprite('fgSnow', 'fgSnow', -600, 700);

    makeAnimatedLuaSprite('santa', 'santa1', -840, 150)
    addAnimationByPrefix('santa', 'idle', 'santa idle in fear', 24, true)

	addLuaSprite('bg', false);
	addLuaSprite('upperBoppers', false);
	addLuaSprite('bgEscalator', false);
	addLuaSprite('tree', false);
	addLuaSprite('bottomBoppers', false);
	addLuaSprite('fgSnow', false);
	addLuaSprite('santa', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end