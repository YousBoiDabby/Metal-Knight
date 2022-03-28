extends Area2D

func _ready():
	visible = false



func _on_start_wave_pressed():
	visible = true


func _on_castle_area_entered(area):
	$castle_damaged.play("castle_damage")
