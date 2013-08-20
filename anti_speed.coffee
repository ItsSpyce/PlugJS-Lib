#anti speed hack script
registerEvent player, 'move', (event) ->
	if event.player.velocity > 1
		if event.player.getAllowFlight() == false
			event.player.setVelocity(1)