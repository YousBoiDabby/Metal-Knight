extends Node2D
var dug = false
var character
func _ready():
	$text_bubble.visible = false
	$chest_ui.visible = false

func _on_Area2D_body_entered(body):
	if dug == false:
		if body.is_in_group("character"):
			character = body
			$text_bubble.visible = true

#what happens when the chracter leaves the AREA where the text appears
func _on_Area2D_body_exited(body):
	if dug == false:
		if body.is_in_group("character"):
			$text_bubble.visible = false
func _process(delta):
	if dug == false:
		if Input.is_action_just_pressed("ui_accept"):
			position.y -= 17
			$text_bubble.visible = false
			$Sprite/AnimationPlayer.play("opening")
			dug = true
		

#character choosing sword
func _on_sword_pressed():
	$Sprite.visible = false
	character.weapon = 'sword'
	queue_free()
	





func _on_mace_pressed():
	$Sprite.visible = false
	character.weapon = 'mace'
	queue_free()


func _on_spear_pressed():
	$Sprite.visible = false
	character.weapon = 'spear'
	queue_free()
