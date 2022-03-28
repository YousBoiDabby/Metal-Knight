extends Label
func _process(delta):
	text = ("Wave: " + String(DataStorage.wave))
