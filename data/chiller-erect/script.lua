function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.023 then
        setProperty('health', health- 0.023);
    end
end
