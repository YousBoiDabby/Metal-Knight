extends TextureButton
func _ready():
	visible = true


func _on_questions_hide_start_button():
	visible = false
