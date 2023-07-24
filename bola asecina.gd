extends CharacterBody2D
class_name bola

var direccion=0.0
var speed=249

@onready var animation =$AnimatedSprite2D


func _physics_process(delta):

	direccion= 1
	
	velocity.x= direccion*speed
	
	if direccion!= 0:
		animation.play("default")
		
	move_and_slide()
	
	
	





func _on_area_2d_body_entered(body):
	if body is player:
		get_tree().change_scene_to_file('res://escenas/muerte/muerte.tscn')
