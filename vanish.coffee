#vanish script
registerEvent player, 'command', (event) ->
	if event.getMessage() == "v"
		if event.canSee(event.player.name)
			event.hidePlayer(event.player.name)
			event.player.sendRawMessage("You are now invisible!")
		if !event.canSee(event.player.name)
			event.showPlayer(event.player.name)
			event.player.sendRawMessage("You are now visible!")