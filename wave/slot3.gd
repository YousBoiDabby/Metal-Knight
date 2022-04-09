extends Panel
signal place
var CharacterClass = preload("res://wave/inventory/character.tscn")
var character = null	
var swift_archer = preload("res://wave/inventory/swift_archer.tscn")
var occupied = false
export var type = 'nothing'

func _process(delta):
	if occupied == false:
		type = 'nothing'
		
func _on_inventory_open_inventory():
	if DataStorage.SA_amount > 0 and occupied == false:
		occupied = true
		character = swift_archer.instance()
		add_child(character)
		type = 'swift_archer'
		DataStorage.SA_amount -= 1
	if DataStorage.AS_amount > 0 and occupied == false:
		occupied = true
		character = CharacterClass.instance()
		add_child(character)
		type = 'acidic_slime'
		DataStorage.AS_amount -= 1
	move_child($select3, 1)	
func _on_select3_picked():
	occupied = false
	remove_child(character)	


func _on_select3_picked2():
	occupied = false
	remove_child(character)	



func _on_select3_picked3():
	occupied = false
	remove_child(character)	


func _on_select3_picked4():
	occupied = false
	remove_child(character)	


func _on_select3_picked5():
	occupied = false
	remove_child(character)	


func _on_select3_picked6():
	occupied = false
	remove_child(character)	


func _on_select3_picked7():
	occupied = false
	remove_child(character)	