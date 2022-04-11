extends Node2D
func _ready():
	if $character.mode == "platformer":
		$character.mode = "topdown"






func _on_Liam_quest1():
	print("Liam")
	$character/quest_ui.quest_1()
