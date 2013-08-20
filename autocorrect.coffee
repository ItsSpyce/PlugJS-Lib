#autocorrect
registerEvent player, 'chat', (event) ->
	msg = event.getMessage().toLowerCase()
	if msg.contains("your a ") || msg.contains("your an ")
		event.setMessage(msg.replace("your", "you're"))
	if msg.contains("were is") || msg.contains("were are")
		event.setMessage(msg.replace("were", "where"))