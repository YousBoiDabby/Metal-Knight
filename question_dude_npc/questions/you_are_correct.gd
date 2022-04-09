extends Sprite
signal add_coins
signal add_coins2
signal hide_question
func _ready():
	visible = false
func _process(delta):
	pass
func _on_button2_right_pressed():
	
	Global.coins += Global.question_is_right
	emit_signal("add_coins")
	visible = true
	emit_signal("hide_question")

func _on_questions_hide_correct():
	visible = false
	
func _on_Button3_right2_pressed():
	visible = true
	Global.coins += Global.question_is_right
	emit_signal("hide_question")	
func _on_button4_right3_pressed():
	visible = true
	Global.coins += Global.question_is_right
	emit_signal("hide_question")

func _on_Button3_right4_pressed():
	visible = true
	Global.coins += Global.question_is_right
	emit_signal("hide_question")


func _on_button4_right5_pressed():
	visible = true
	Global.coins += Global.question_is_right
	emit_signal("hide_question")


func _on_button1_right6_pressed():
	visible = true
	Global.coins += Global.question_is_right
	emit_signal("hide_question")


func _on_Button3_right7_pressed():
	visible = true
	Global.coins += Global.question_is_right
	emit_signal("hide_question")
