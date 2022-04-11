extends Node2D

var active = false 


func _on_Area2D_body_entered(body):
	if body.name == "character":
		active = true


func _on_Area2D_body_exited(body):
	if body.name == "character":
		active = false

func unpause(_timeline_name):
	get_tree().paused = false
	active = false

func _input(event):
	if get_node_or_null("DialogNode") == null:
		if event.is_action_pressed("ui_accept") and active:
			get_tree().paused = true
			var dialog = Dialogic.start("obelisk")
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end", self, "unpause")
			add_child(dialog)




