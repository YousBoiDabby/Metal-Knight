extends Timer
signal stop_moving
func _ready():
	set_wait_time(0.2)
	start()




func _on_gate_body_entered(body):
	stop()
	emit_signal("stop_moving")


func _on_no_walk():
	start()
