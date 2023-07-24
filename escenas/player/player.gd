extends CharacterBody2D
class_name player
var speed = 250
var gravity= 9
var jump= 400
var direccion = 0.0
@onready var animation=$AnimatedSprite2D


func _physics_process(delta):
	

	direccion= 1
	
	velocity.x= direccion*speed
	
	if direccion!= 0:
		animation.play("RUN")
	else:
		animation.play("IDLE")
	
	animation.flip_h = direccion < 0 if direccion != 0 else animation.flip_h
	
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		animation.flip_v = gravity > 0 if gravity != 0 else animation.flip_v
		gravity=-9
		velocity.y-= jump
	
	
	
		animation.flip_h = direccion < 0 if direccion != 0 else animation.flip_h
	if not is_on_floor():
		velocity.y+=gravity
		animation.play("JUMP")
	if gravity<0 and Input.is_action_just_pressed("ui_down"):
		animation.flip_v = gravity >0 if gravity != 0 else animation.flip_v
		gravity=30
	
	
	
	move_and_slide()
		


	
	



