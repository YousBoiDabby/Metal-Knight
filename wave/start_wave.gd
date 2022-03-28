extends TextureButton
func _ready():
	if DataStorage.inventory == false:
		visible = true


func _on_start_wave_pressed():
	DataStorage.start_wave = true
	visible = false
