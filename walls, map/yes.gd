extends TextureButton
signal hide_bubble
signal hide_no
func _ready():
	visible = false



func _on_gate_keeper_show_yes():
	visible = true


func _on_no_hide_yes():
	visible = false

func _on_yes_pressed():
	emit_signal("hide_no")
	emit_signal("hide_bubble")
	get_tree().change_scene("res://wave/Wave.tscn")
