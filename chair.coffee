#chairs
registerEvent player, 'interact', (event) ->
	blocky = event.getClickedBlock()
	if blocky == org.bukkit.Material.WOOD_STAIRS
		blocky.setPassenger(event.player.name)
