extends Area2D

func _process(delta):
	if Global.questionnare_is_here == false:
		queue_free()
