#Wyndham Signs
registerEvent block, 'signChange', (event) ->
	if event.getLine(0).equalsIgnoreCase("[Wyndham]")
		event.setLine(0, "\xA7c[Wyndham]")
		if event.getLine(1).equalsIgnoreCase("Horse Stables")
			event.setLine(1, "Horse Stables")
registerEvent player, 'interactEntity', (event) ->
	if event.hasBlock() && event.clickedBlock.state instanceof org.bukkit.block.Sign && event.action == event.action["RIGHT_CLICK_BLOCK"]
		log(event.clickedBlock.state.getLine(0))
		if event.clickedBlock.state.getLine(0).equalsIgnoreCase("\xA7c[Wyndham]")
			player = event.player
			if event.clickedBlock.state.getLine(1).equalsIgnoreCase("Horse Stable")
				log("nailed it!")