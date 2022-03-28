extends Control


var button_pressed = null
var AS_I_amount = null
var SA_I_amount = null
signal open_inventory
func _ready():
	AS_I_amount = DataStorage.AS_amount
	SA_I_amount = DataStorage.SA_amount
	emit_signal("open_inventory")
func _input(event):
	if DataStorage.inventory == true:
		if event.is_action_pressed("E") and DataStorage.inventory == true:
			DataStorage.AS_amount = AS_I_amount
			DataStorage.SA_amount = SA_I_amount
			get_tree().change_scene("res://Inside_castle/walls, map/Map.tscn")
			DataStorage.inventory = false
	


