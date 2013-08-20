#test coffee script for minecraft server
registerEvent player, 'join', (event) ->
	unless event.player.name == "Epic_N_Easy"
		event.joinMessage = "Welcome, \xA73#{event.player.name}\xA7f. Please note you are on Conji's testing server."
	event.joinMessage = "\xA7bConji(Epic_N_Easy) is now on the server."
registerEvent player, 'login', (event) ->
	address = event.getAddress()
	log("#{event.player.name} has logged in from #{address}. By default, the ip will not be logged.", 'b')
