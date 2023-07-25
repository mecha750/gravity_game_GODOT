extends Node


var monedas =0:
	set(val):
		monedas= val
		if player != null:
			player.actualizaInterfazMonedaz
			$coin.play()
	get: 
		return monedas
		
var player
