extends Area2D

var active = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_tele_body_entered(body):
	if body.name == "character":
		active = true
		


func _on_tele_body_exited(body):
	if body.name == "character":
		active = false
		
		
func unpause(_timeline_name):
	get_tree().paused = false
	active = false

func _input(event):
	if get_node_or_null("DialogNode") == null:
		if active:
			get_tree().paused = true
			var dialog = Dialogic.start("cave-entrance")
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end", self, "unpause")
			add_child(dialog)

