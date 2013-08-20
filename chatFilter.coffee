#chat filter for PlugJS

pattern = ///

///
blockedWords = 
	[
		"fuck",
		"shit",
		"cunt",
		"damn",
		"ass",
		"bitch"]
#does not replace the entire sentence. It only replaces the word that is blocked.
#Ex: "I hate that shit" will be replaced with "I hate that crap"
replacementPhrase = "crap"

registerEvent player, 'chat', (event) ->
	sentMessage = event.getMessage()
	messageString = sentMessage.toLowerCase()
	for word in blockedWords
		if messageString.contains(word)
			event.player.sendMessage("\xA7c#{event.player.name} said a curse word!")
			event.player.kickPlayer("Cursing isn't allowed on this server!")
			log("#{event.player.name} was kicked for saying #{word}!", 'c')
			event.setCancelled(true)