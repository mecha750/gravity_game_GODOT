extends Button
func _process(delta):
	pass
	
func _ready():
	pressed.connect(self.handle_press)
	
func handle_press():
	get_tree().change_scene_to_file("res://escenas/world/world.tscn")
