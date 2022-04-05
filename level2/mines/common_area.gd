extends Node2D
func _ready():
	if $character.mode == "platformer":
		$character.mode = "topdown"
