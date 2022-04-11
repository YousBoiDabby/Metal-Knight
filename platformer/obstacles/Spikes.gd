extends Node2D



func _on_Area2D_body_entered(body):
	if body.name == "character":
		body.lose_health(0.5)

