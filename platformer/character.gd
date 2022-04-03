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
const ACCEL = 20
var JUMPFORCE = 500
var dashcount = 1
var dmg = 4
export var revive = false
var DASH = false
export var dead = false
var mode = 'platformer'
var motion = Vector2()
func _process(delta):
	if dead != true:
		if weapon == 'spear':
			spear()
		if weapon == 'mace':
			mace()
		if weapon == 'sword':
			sword()
		if mode == 'platformer':
			platformer_movement()
	if revive == true:
		position.x = 14
		position.y = 7
		$HEARTS.heal()
		dead = false
		revive = false

func _ready():
	$Sprite/sword/sword_box.disabled = true
 
func _on_Timer_timeout():
	$Timer.stop()
	dashcount = 1

func platformer_movement():
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	motion.x = clamp(motion.x, -MAXSPEED,MAXSPEED)
	if Input.is_action_pressed("ui_right"):
		$CollisionShape2D.position.x = -5
		$Sprite.flip_h = false
		$Sprite/sword/sword_box.position.x = 110.5
		if attacking != true:
			$AnimationPlayer.play("walking")
		motion.x += ACCEL
		#motion.x = MAXSPEED
	elif Input.is_action_pressed("ui_left"):
		$CollisionShape2D.position.x = 1
		motion.x -= ACCEL
		#motion.x = -MAXSPEED
		$Sprite.flip_h = true
		$Sprite/sword/sword_box.position.x = -110.5
		if attacking != true:
			$AnimationPlayer.play("walking")
	elif DASH != true:
		motion.x = lerp(motion.x,0,0.2)
		#motion.x = 0
	if Input.is_action_pressed("shift") and dashcount > 0:
		DASH = true
		if $Sprite.flip_h == true:
			$Sprite/sword/sword_box.position.x = -110.5
			motion.x = -DASHSPEED
			$DASH.start()
			dashcount = 0
			#motion.x = -MAXSPEED
		if $Sprite.flip_h == false:
			$Sprite/sword/sword_box.position.x = 110.5
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
	

func lose_health(health_lost):
	$HEARTS.losehealth(health_lost)
	if $HEARTS.health <= 0:
		die()
func _on_DASH_timeout():
	$DASH.stop()
	$Timer.start()
	DASH = false
	motion.x = 0
	motion.y = 0
	dashcount = 0

func die():
	dead = true
	$AnimationPlayer.play("death")
func sword():
	if Input.is_action_pressed("E"):
		attacking = true
		$AnimationPlayer.play("attacking_sword")
		
# zone where it gets hurt
func _on_hurty_zone_body_entered(body):
	take_dmg(body)
	
	
func take_dmg(body):
	var take_dmg
	if body.is_in_group("enemy"):
		take_dmg = body.dmg
		$HEARTS.losehealth(take_dmg)
		if $HEARTS.health <= 0:
			die()


func _on_sword_body_entered(enemy):
	if enemy.is_in_group("enemy"):
		enemy.take_dmg(dmg)
		
func mace():
	if Input.is_action_pressed("E"):
		attacking = true
		$AnimationPlayer.play("mace attack")
		var dmg = 6
		
func spear():
	if Input.is_action_pressed("E"):
		attacking = true
		$AnimationPlayer.play("spear attack")
		var dmg = 2

func _on_mace_body_entered(enemy):
	if enemy.is_in_group("enemy"):
		enemy.take_dmg(dmg)


func _on_spear_body_entered(enemy):
	if enemy.is_in_group("enemy"):
		enemy.take_dmg(dmg)
