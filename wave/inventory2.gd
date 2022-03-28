extends TouchScreenButton
func _ready():
	visible = false
	if DataStorage.inventory == true:
		visible = true
