extends PathFollow2D
var speed = 75
var hp = 10
func _ready():
	pass
func _process(delta):
	offset += speed * delta
	
	if unit_offset >= 1:
		reached_end()
	if hp <= 0:
		queue_free()

func reached_end():
	queue_free()

func _on_Area2D_area_entered(area):
	if area. is_in_group("bullet"):
		area.queue_free()
		hp -= 1
		if hp <= 0:
			queue_free()

func play_animation():
	$AnimationPlayer.play("eye_got_hurt")
