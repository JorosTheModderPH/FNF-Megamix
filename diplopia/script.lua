function onCreate()
	makeLuaSprite('dreamscapeOuter', 'dreamscapeOuter', -640, -360);
	setObjectCamera('dreamscapeOuter', 'camHUD');
	addLuaSprite('dreamscapeOuter', true);

    makeAnimatedLuaSprite('dreamscape', 'dreamscapeAnim.ss', 0, 0)
    addAnimationByPrefix('dreamscape', 'smoke', 'dreamscapeAnim.ss flame', 8, true)
	setObjectCamera('dreamscape', 'camHUD');
	addLuaSprite('dreamscape', true);
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.023 then
        setProperty('health', health- 0.023);
    end
end

function onBeatHit()
    if curBeat == 19 then
        triggerEvent('Play Animation', 'hey', 'bf')
    end
    
    if curBeat == 25 then
        triggerEvent('Play Animation', 'idle', 'bf')
    end
    
    if curBeat == 35 then
        triggerEvent('Play Animation', 'hey', 'bf')
    end
    
    if curBeat == 40 then
        triggerEvent('Play Animation', 'idle', 'bf')
    end
end