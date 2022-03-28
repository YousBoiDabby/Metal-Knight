extends TextureRect
func _ready():
	visible = false



func _on_no_hide_bubble():
	visible = false


func _on_gate_keeper_show_bubble():
	visible = true


func _on_yes_hide_bubble():
	visible = false
