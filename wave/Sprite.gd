extends Sprite
var flowing
func _ready():
	visible = false


func _on_Aggro_area_exited(area):
	visible = false


func _on_acidic_slime_SUS():
	visible = not(visible)
