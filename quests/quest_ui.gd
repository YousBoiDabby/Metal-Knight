extends Node2D
var first_quest = preload("res://game/level2/quests/quest 1.tscn")
var quest1 = false

func _ready():
	visible = false
	
	
# this activates the quest log	
func _input(event):
	if Input.is_action_just_pressed("quest"):
		visible = not(visible)


# this is th efunction for adding the first quest
func quest_1():
	var quest_1_node = first_quest.instance()
	add_child(quest_1_node)
	quest1 = true
	quest_1_node.scale.x = 1.37
	quest_1_node.scale.y = 1.317
	quest_1_node.position.x = 8
	quest_1_node.position.y = 36
