extends Sprite
signal show_yes
signal show_no
signal show_bubble
func _ready():
	pass
var backward = false
#func _on_walk_countdown_timeout():
#	if backward != true:
#		position.x += 0.2
#	if position.x > 6:
#		backward = true
#	if position.x < -6:
#		backward = false
#	if backward == true:
#		position.x -= 0.2
		
		
	
	




func _on_gate_body_entered(body):
	emit_signal("show_no")
	emit_signal("show_yes")
	emit_signal("show_bubble")
