extends TextureButton
var amount = 0
signal update_amount
var max_amount = null
func _process(delta):
	max_amount = DataStorage.AS_max_amount
	amount = DataStorage.AS_amount
func _on_buy_button_pressed():
	if amount < max_amount and Global.coins >= 75:
		Global.coins -= 75
		DataStorage.AS_amount += 1
