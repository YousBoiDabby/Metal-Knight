extends Sprite
signal hide_question
func _ready():
	visible = false


# question 1 wrong answers
func _on_button1_wrong_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button4_wrong_pressed():
	visible = true
	emit_signal("hide_question")
func _on_Button3_wrong_pressed():
	visible = true
	emit_signal("hide_question")
func _on_questions_hide_wrong():
	emit_signal("hide_question")
	visible = false
# question 2 wrong answers
func _on_button2_wrong2_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button1_wrong2_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button4_wrong2_pressed():
	visible = true
	emit_signal("hide_question")

# question 3 wrong answers
func _on_Button3_wrong3_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button2_wrong3_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button1_wrong3_pressed():
	visible = true
	emit_signal("hide_question")

# question 4 wrong answers
func _on_button2_wrong4_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button1_wrong4_pressed():
	visible = true
	emit_signal("hide_question")
func _on_button4_wrong4_pressed():
	visible = true
	emit_signal("hide_question")

#question5 wrong answers
func _on_Button3_wrong5_pressed():
	visible = true
	emit_signal("hide_question")



func _on_button2_wrong5_pressed():
	visible = true
	emit_signal("hide_question")


func _on_button1_wrong5_pressed():
	visible = true
	emit_signal("hide_question")

#question6 wrong answers
func _on_Button3_wrong6_pressed():
	visible = true
	emit_signal("hide_question")

func _on_button2_wrong6_pressed():
	visible = true
	emit_signal("hide_question")

func _on_button4_wrong6_pressed():
	visible = true
	emit_signal("hide_question")

#question7 wrong answers
func _on_button2_wrong7_pressed():
	visible = true
	emit_signal("hide_question")


func _on_button1_wrong7_pressed():
	visible = true
	emit_signal("hide_question")



func _on_button4_wrong7_pressed():
	visible = true
	emit_signal("hide_question")
