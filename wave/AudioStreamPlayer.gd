extends AudioStreamPlayer
var play = false
func _process(delta):
	if playing == false:
		play = false
	if play == false:
		play()
		play = true
