function opponentNoteHit() --drain health adjustment, just imagine that people might miss one easy sustain note. this will help to prevent them from losing the song.
	if dadName == 'mami-reminisce-adjustment' then
		setProperty("health", getProperty("health") - 0.002645)
		if getProperty("health") < 0.002645 then
			setProperty("health", 0.002645 )
		end
	end
end