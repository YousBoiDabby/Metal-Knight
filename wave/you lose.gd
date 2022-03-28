extends TextureRect

func _ready():
	visible = false

func _on_castle_healthbar_lose():
	visible = true
