extends Sprite
signal text_is_visible
signal move_to_me
signal done1
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Inside_castle/question_dude_npc/question_dude_ui/question_background.tscn")
func _ready():
	if DataStorage.quiz == 0:
		visible = false
	if Global.questionnare_is_here == false:
		if DataStorage.quiz == 1:
			emit_signal("text_is_visible")
			emit_signal("move_to_me")
			emit_signal("done1")

func _on_timer_timeout():
	visible = false
	queue_free()
