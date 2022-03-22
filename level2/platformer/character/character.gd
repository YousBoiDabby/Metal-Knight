extends KinematicBody2D
export var speed = 4
var stick = false
const UP = Vector2(0, -1)
var GRAVITY = 30
var weapon = 'none'
var MAXFALLSPEED = 200
var MAXSPEED = 200
export var attacking = false
var DASHSPEED = 10000
var sword_texture = preload("res://game/level2/platformer/character/sword_attacking.png")
var walking = preload("res://game/level2/platformer/character/metal_knight_walking.png")
const ACCEL = 20
var JUMPFORCE = 500
var dashcount = 1
var dmg = 3
var DASH = false
var mode = 'platformer'
var motion = Vector2()
func _process(delta):
	if weapon == 'sword':
		sword()
	if mode == 'platformer':
		platformer_movement()


func _on_Timer_timeout():
	$Timer.stop()
	dashcount = 1

func platformer_movement():
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	motion.x = clamp(motion.x, -MAXSPEED,MAXSPEED)
	if Input.is_action_pressed("ui_right"):
		$Sprite.flip_h = false
		if attacking != true:
			$AnimationPlayer.play("walking")
		motion.x += ACCEL		
		#motion.x = MAXSPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x -= ACCEL
		#motion.x = -MAXSPEED
		$Sprite.flip_h = true
		if attacking != true:
			$AnimationPlayer.play("walking")
	elif DASH != true: 
		motion.x = lerp(motion.x,0,0.2)
		#motion.x = 0
	if Input.is_action_pressed("shift") and dashcount > 0:
		DASH = true
		if $Sprite.flip_h == true:
			motion.x = -DASHSPEED
			$DASH.start()
			dashcount = 0
			#motion.x = -MAXSPEED
		if $Sprite.flip_h == false:
			motion.x = DASHSPEED
			$DASH.start()
			dashcount = 0
			#motion.x = -MAXSPEED
	if $RayCast2D.is_colliding() or $RayCast2D2.is_colliding():
		if Input.is_action_pressed("Q"):
			var jump = false
			stick = true
			if stick == true:
				motion.y = 0
			if Input.is_action_pressed("jump") and jump == false:
				jump = true
				stick = false
				motion.y = -JUMPFORCE
				jump = false
			if jump == false:
				GRAVITY = 30
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			motion.y = -JUMPFORCE
	
	motion = move_and_slide(motion, UP)	
	


func _on_DASH_timeout():
	$DASH.stop()
	$Timer.start()
	DASH = false
	motion.x = 0
	motion.y = 0
	dashcount = 0


func sword():
	if Input.is_action_pressed("E"):
		attacking = true
		$AnimationPlayer.play("attacking_sword")
		
