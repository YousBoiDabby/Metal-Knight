extends KinematicBody2D
export var speed = 12
func _ready():
	pass
func	_physics_process(delta):
	var velocity = Vector2()
	if	Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if	Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if	Input.is_action_pressed("ui_up"):
		velocity.y -= speed
	if	Input.is_action_pressed("ui_down"):
		velocity.y += speed
	velocity.normalized()
	position += velocity * delta
	move_and_collide(velocity)	
	








func _on_question_dude_move_to_me():
	position.x = 14
	position. y = 5
