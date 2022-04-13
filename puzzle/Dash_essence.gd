extends Area2D
var PICK_UP_DASH = false
var character


func _on_Area2D_body_entered(body):
	if body.name == 'character':
		character = body
		PICK_UP_DASH = true
	


func _on_Area2D_body_exited(body):
	if body.name == 'character':
		PICK_UP_DASH = false
	
func _input(event):
	if Input.is_action_just_pressed("ui_accept") and PICK_UP_DASH == true:
		print('rkjgkrjg')
		character.DASH_ability = true
		queue_free()
