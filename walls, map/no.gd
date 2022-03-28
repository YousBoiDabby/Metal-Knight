extends TextureButton
signal walk
signal hide_yes
signal hide_bubble
func _ready():
	visible = false



func _on_no_pressed():
	visible = false
	emit_signal("walk")
	emit_signal("hide_yes")
	emit_signal("hide_bubble")

func _on_gate_keeper_show_no():
	visible = true


func _on_yes_hide_no():
	visible = false
