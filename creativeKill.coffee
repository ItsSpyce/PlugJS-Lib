#kills mobs in one hit
registerEvent player, 'interactEntity', (event) ->
	if event.player.getGameMode() == org.bukkit.GameMode.CREATIVE
		mob = event.getRightClicked()
		mobEntity = org.bukkit.entity.EntityType
		switch event.getRightClicked().getType().toString()
			when org.bukkit.entity.EntityType.CREEPER
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.SKELETON
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.SPIDER
				event.getRightClicked().remove()
			when morg.bukkit.entity.EntityType.GIANT
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.ZOMBIE
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.SLIME
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.GHAST
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.PIG_ZOMBIE
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.ENDERMAN
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.CAVE_SPIDER
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.SILVERFISH
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.BLAZE
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.MAGMA_CUBE
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.ENDER_DRAGON
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.WITHER
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.WITCH
				event.getRightClicked().remove()
			when org.bukkit.entity.EntityType.WOLF
				if org.bukkit.entity.EntityType.WOLF.isAngry()
					event.getRightClicked().remove()
			else