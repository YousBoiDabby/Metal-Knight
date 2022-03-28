extends TextureRect
func _ready():
	visible = true


#func _on_x_button_pressed():
#	if DataStorage.inventory == true:
#		get_tree().change_scene("res://Inside_castle/walls, map/Map.tscn")
#		DataStorage.inventory = false


func _on_start_wave_pressed():
	visible = false
