extends TextureProgress
signal lose
func _ready():
	value = 400

func _on_castle_area_entered(area):
	value -= 40
	if value <= 0:
		emit_signal("lose")
