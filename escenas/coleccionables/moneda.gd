extends Area2D


func _on_body_entered(body):
	if body is player:
		Global.monedas+=1
		print(Global.monedas)
		queue_free()

