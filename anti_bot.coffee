#anti-bot

registerEvent player, 'login', (event) ->
	res = ""
	api = "http://www.shroomery.org/ythan/proxycheck.php?ip="
	stream = new Scanner(new URL(api + event.getAddress().toString().replace("/", "")).openStream())
	while stream.hasNextLine()
		res += stream.nextLine()
	res = res.toLowerCase().replaceAll("type", "").replaceAll("frequency", "")
	stream.close()
	if res.contains("y")
		event.player.kickPlayer("No bots allowed!")


require java.util.Scanner
require java.io.PrintStream
require java.net.InetAddress
require java.net.URL