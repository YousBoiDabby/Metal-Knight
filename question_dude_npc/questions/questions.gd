extends Node2D
var question_number = 0
signal question_is_2
signal question_is_3
signal question_is_4
signal question_is_5
signal question_is_6
signal question_is_7
signal hide_1
signal hide_2
signal hide_3
signal hide_4
signal hide_5
signal hide_6
signal hide_7
signal hide_correct
signal hide_wrong
func _ready():
	visible = false
	question_number = 1
signal hide_start_button
signal hide_x
func _on_button_to_continue_pressed():
	emit_signal("hide_correct")
	emit_signal("hide_wrong")
	if question_number == 2:
		emit_signal("question_is_2")
	if question_number == 3:
		emit_signal("question_is_3")
	if question_number == 4:
		emit_signal("question_is_4")
	if question_number == 5:
		emit_signal("question_is_5")
	if question_number == 6:
		emit_signal("question_is_6")
	if question_number == 7:
		emit_signal("question_is_7")
	if question_number == 8:
		Global.questionnare_is_here = false
		get_tree().change_scene("res://Inside_castle/walls, map/Map.tscn")
		
func _on_TextureButton_pressed():
	visible = true
	emit_signal("hide_start_button")
	emit_signal("hide_x")
	






func _on_you_are_very_dumb_and_are_incorrect_hide_question():
	question_number += .5
	if question_number == 1.5:
		emit_signal("hide_1")
	if question_number == 2.5:
		emit_signal("hide_2")
	if question_number == 3.5:
		emit_signal("hide_3")
	if question_number == 4.5:
		emit_signal("hide_4")
	if question_number == 5.5:
		emit_signal("hide_5")
	if question_number == 6.5:
		emit_signal("hide_6")
	if question_number == 7.5:
		emit_signal("hide_7")



func _on_you_are_correct_hide_question():
	question_number += .5
	if question_number == 1.5:
		emit_signal("hide_1")
	if question_number == 2.5:
		emit_signal("hide_2")
	if question_number == 3.5:
		emit_signal("hide_3")
	if question_number == 4.5:
		emit_signal("hide_4")
	if question_number == 5.5:
		emit_signal("hide_5")
	if question_number == 6.5:
		emit_signal("hide_6")
	if question_number == 7.5:
		emit_signal("hide_7")


func _on_button_to_continue2_pressed():
	emit_signal("hide_correct")
	emit_signal("hide_wrong")
	if question_number == 2:
		emit_signal("question_is_2")
	if question_number == 3:
		emit_signal("question_is_3")
	if question_number == 4:
		emit_signal("question_is_4")
	if question_number == 5:
		emit_signal("question_is_5")
	if question_number == 6:
		emit_signal("question_is_6")
	if question_number == 7:
		emit_signal("question_is_7")
	if question_number == 8:
		Global.questionnare_is_here = false
		get_tree().change_scene("res://Inside_castle/walls, map/Map.tscn")
