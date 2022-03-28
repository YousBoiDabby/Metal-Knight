extends Node2D
var acidic_slime = preload("res://wave/sime tower.tscn")
var swift_archer = preload ("res://wave/swift_archer_tower.tscn")
var character = null	
var place = null
signal no_duplicate
var tower
func _process(delta):
	if DataStorage.highlighted == false:
		tower = 'nothing'

func _on_select_acidic_slime():
	tower = 'acidic_slime'


func _on_select2_acidic_slime():
	tower = 'acidic_slime'


func _on_select2_swift_archer():
	tower = 'swift_archer'


func _on_select_swift_archer():
	tower = 'swift_archer'


func _on_select3_acidic_slime():
	tower = 'acidic_slime'


func _on_select3_swift_archer():
	tower = 'swift_archer'



func _on_signal_sender_picked2():
	if tower == 'acidic_slime':
		character = acidic_slime.instance()
		add_child(character)
		emit_signal("no_duplicate")
	if tower == 'swift_archer':
		character = swift_archer.instance()
		add_child(character)
		emit_signal("no_duplicate")


