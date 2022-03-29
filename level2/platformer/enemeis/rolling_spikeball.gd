extends KinematicBody2D
onready var player = get_node("/root/Node2D/character")
var motion = Vector2()
var player_direction
var follow = false
var MAXSPEED = 40
var dmg = 1
var hp = 8
var GRAVITY = 20
var MAXFALLSPEED = 500
var UP =  Vector2(0, -1)
var rotating_amount = 10
var rolling = true
var dizzy = false
var crystal_out = true
func _process(delta):
	if hp <= 0:
		die()
	if follow == true:
		follow()
	if follow == false:
		motion.x = 0
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	move_and_slide(motion, UP)
	
	
# this is what happens when the character enters the aggro zone
func follow():
	$Sprite.frame = 2
	if dizzy == false and rolling == true:
		$Roll_timer.start()
		rolling = false
	if follow == true:
		var direction
		direction = (global_position.x - player.global_position.x)
		if direction < 0:
			player_direction = 'right'
			motion.x = MAXSPEED
			$Sprite.rotation_degrees += rotating_amount
		if direction > 0:
			motion.x = -MAXSPEED
			player_direction = 'left'
			$Sprite.rotation_degrees += rotating_amount
		if direction == 0 and player_direction == 'left':
			motion.x = MAXSPEED
			$Sprite.rotation_degrees += rotating_amount
		if direction == 0 and player_direction == 'right':
			motion.x = -MAXSPEED
			$Sprite.rotation_degrees += rotating_amount




func _on_Area2D_body_entered(body):
	if body.name == "character":
		follow = true


func _on_Area2D_body_exited(body):
	if body.name == "character":
		follow = false

# this is what happens when the enemy dies
func die():
	queue_free()

func take_dmg(dmg):
	if crystal_out == false and dizzy == true: 
		if player_direction == 'left':
			position.x += 70
		if player_direction == 'right':
			position.x -= 70
		hp -= dmg
		follow = true
		dizzy = false
		crystal_out = true
		$Sprite.frame = 2
	if crystal_out == true and dizzy == true:
		$Sprite.frame = 0
		crystal_out = false

func _on_Roll_timer_timeout():
	$Roll_timer.stop()
	dizzy = true
	follow = false
	rolling = true
	$freeze_timer.start()


#this is what happens if the enemy is dizzy

#this is what happens after the enemy isn't dizzy anymore
func _on_freeze_timer_timeout():
	$freeze_timer.stop()
	dizzy = false
	rolling = true
	follow = true
	crystal_out = true
	$Sprite.frame = 2
	
