extends TextureButton
var selected = false
signal picked
var slot
signal nothing
signal picked2
signal picked3
signal picked4
signal picked5
signal picked6
signal picked7
signal picked8
signal picked9
signal picked10
signal acidic_slime
signal swift_archer
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
		
func _on_select3_pressed():
	selected = (not(selected))
	slot = get_parent()
	if selected == true:
		if slot.type == 'acidic_slime':
			emit_signal("acidic_slime")
		if slot.type == 'swift_archer':
			emit_signal("swift_archer")
		if slot.type == 'nothing':
			emit_signal("nothing")
	DataStorage.highlighted = (not(DataStorage.highlighted))


func _on_place_down_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked")
		
func _on_place_down2_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked2")


func _on_place_down3_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked3")


func _on_place_down4_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked4")


func _on_place_down5_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked5")


func _on_place_down6_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked6")


func _on_place_down7_pressed():
	if selected == true and slot.occupied == true:
		emit_signal("picked7")
