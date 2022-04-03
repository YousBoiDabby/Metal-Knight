extends Node2D
var motion = Vector2()
var GRAVITY = 30
var MAXFALLSPEED = 20
var FALLING = false
func _ready():
	pass # Replace with function body.




#when the area 2D node is entered this will start a timer for the time untill it falls
func _on_Area2D_body_entered(body):
	if body.name == ("character"):
		$Timer.start()
		print(FALLING)


func _on_Timer_timeout():
	FALLING = true
	
func _process(delta):
	if FALLING == true:
		position.y += 0.3
	
