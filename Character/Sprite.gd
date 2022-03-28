extends Sprite
var side_texture = preload("res://Inside_castle/Character/side_character.png")
var _texture = preload("res://Inside_castle/Character/character.png")
func _ready():
	texture = _texture
func _process(delta):
	if	Input.is_action_pressed("ui_left"):
		texture = side_texture
		rotation_degrees = 180
	if	Input.is_action_pressed("ui_right"):
		texture = side_texture
		rotation_degrees = 0
	if	Input.is_action_pressed("ui_up"):
		texture = _texture
		rotation_degrees = 180
	if	Input.is_action_pressed("ui_down"):
		texture = _texture
		rotation_degrees = 0
