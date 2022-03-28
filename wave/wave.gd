extends Control
func _ready():
	if DataStorage.inventory == true:
		visible = false
	elif DataStorage.inventory == false:
		visible = true
