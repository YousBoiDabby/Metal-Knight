extends TextureButton
var selected = false
signal picked
func _process(delta):
	if DataStorage.highlighted == false:
		visible = true
	if DataStorage.highlighted == true:
		if selected == false:
			visible = false

		
func _input(event):
	if DataStorage.inventory == true:
		if event.is_action_pressed("E"):
			selected = false
			DataStorage.highlighted = false
		
func _on_select5_pressed():
	selected = (not(selected))
	DataStorage.highlighted = (not(DataStorage.highlighted))


func _on_place_down_pressed():
	#if selected == true:
	#	emit_signal("picked")
	pass
