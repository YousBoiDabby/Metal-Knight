extends KinematicBody2D
var velocity = Vector2()
var speed = -12

func _process(delta):
	position.x += speed
	


func _on_Area2D_body_entered(body):
	if body.name == "TileMap":
		speed = 12


func _on_Area2D2_body_entered(body):
	if body.name == "TileMap":
		speed = -12
