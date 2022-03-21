function onCreate()
	-- background shit
	makeLuaSprite('BGbutreesegaveup', 'BGbutreesegaveup', -1350, -230);
	setLuaSpriteScrollFactor('BGbutreesegaveup', 0.9, 0.9);

	makeLuaSprite('BGFloor', 'BGFloor', -650, 600);
	setLuaSpriteScrollFactor('BGFloor', 0.9, 0.9);
	scaleObject('BGFloor', 0,9, 0.9);
	
	makeAnimatedLuaSprite('gorls', 'girls', -1300, 165);
	addAnimationByPrefix('gorls', 'girls dancing instance','girls', 24,true);
	setScrollFactor('gorls', 0.9, 0.9);

	addLuaSprite('BGbutreesegaveup', false);
	addLuaSprite('BGFloor', false);
	addLuaSprite('gorls', false);
	
end

function onBeatHit()

    if curBeat % 2 == 1 then
        objectPlayAnimation('gorls','girls dancing instance', false)

end
end

function goodNoteHit(id, direction, noteType, isSustainNote ) --health system, if you modify this you have skill issue 

	setProperty('health', getProperty('health')+ 0.023)
	if isSustainNote then
		setProperty('health', getProperty('health')- 0.046)
	end

end

function noteMiss(id, direction, noteType, isSustainNote) --health system, if you modify this, you have skill issue
		setProperty('health', getProperty('health')- 0.115)
		setProperty('songScore', getProperty('songScore')- 15)
end

function onCreatePost() --winning icon
  setProperty('iconP1.visible', false)
  makeAnimatedLuaSprite('icon-P1', 'icons/'..getProperty('iconP1.char'), getProperty('iconP1.x'), getProperty('iconP1.y'))
  setProperty('icon-P1.flipX', true)
  setObjectCamera('icon-P1', 'hud')

  addAnimationByPrefix('icon-P1', 'healthy', 'healthy')
  addAnimationByPrefix('icon-P1', 'sad', 'sad')
  addAnimationByPrefix('icon-P1', 'winner', 'winner')

  addLuaSprite('icon-P1', true)

  setProperty('iconP2.visible', false)
  makeAnimatedLuaSprite('icon-P2', 'icons/'..getProperty('iconP2.char'), getProperty('iconP2.x'), getProperty('iconP2.y'))
  setObjectCamera('icon-P2', 'hud')

  addAnimationByPrefix('icon-P2', 'healthy', 'healthy')
  addAnimationByPrefix('icon-P2', 'sad', 'sad')
  addAnimationByPrefix('icon-P2', 'winner', 'winner')

  addLuaSprite('icon-P2', true)
end
function onUpdatePost()
  setProperty('icon-P1.x', getProperty('iconP1.x'))
  setProperty('icon-P1.y', getProperty('iconP1.y'))

  setProperty('icon-P2.x', getProperty('iconP2.x'))
  setProperty('icon-P2.y', getProperty('iconP2.y'))
end
function onUpdate()
  if getProperty('health') < 0.4 then
    objectPlayAnimation('icon-P1', 'sad')
    objectPlayAnimation('icon-P2', 'winner')
  elseif getProperty('health') > 1.6 then
    objectPlayAnimation('icon-P1', 'winner')
    objectPlayAnimation('icon-P2', 'sad')
  else
    objectPlayAnimation('icon-P1', 'healthy')
    objectPlayAnimation('icon-P2', 'healthy')
  end
end