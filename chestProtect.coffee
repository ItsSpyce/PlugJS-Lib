#script for locking chests and doors.
chestOwner = null
registerEvent block, 'place', (event) ->
	if event.id == 54
		log("#{event.player.id} placed a chest!")
		chestOwner = event.block.getPlayer()
registerEvent inventory, 'opened', (event) ->
	if event.getInventory().getHolder() instanceof Chest || event.getInventory().getHolder() instanceof DoubleChest
		if event.inventory.getPlayer() != chestOwner
			event.inventory.setCancelled(true)