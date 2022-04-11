extends Node2D


func _ready():
	$character.mode = 'platformer'
	get_tree().paused = false


