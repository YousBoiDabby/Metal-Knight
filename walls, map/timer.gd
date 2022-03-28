extends Timer
func _ready():
	autostart = false
	set_wait_time(2.5)

func _on_timer_timeout():
	stop()
	DataStorage.quiz = 0
	queue_free()


func _on_question_dude_done1():
	if DataStorage.quiz == 1:
		start()
		
