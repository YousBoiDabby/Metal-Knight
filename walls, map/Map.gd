extends Sprite
func _input(event):
	if event.is_action_pressed("E"):
		get_tree().change_scene("res://wave/Wave.tscn")
		DataStorage.inventory = true
		
		
