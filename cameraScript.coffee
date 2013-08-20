#camera script first attempt .___. Don't go judging me.

registerPermission "cs.create", "op"
registerPermission "cs.destroy", "op"
registerPermission "cs.view", "op"

registerEvent block, 'signChange', (event) ->
	if event.getLine(0).equalsIgnoreCase("[Camera]")
		if event.getLine(1) != ""
			line2 = event.getLine(1)
			event.setLine(0, "\xA74[Camera]")
			event.setLine(2, event.getPlayer().name)
			event.getBlock().setData(new Byte(event.getBlock().getLocation()))