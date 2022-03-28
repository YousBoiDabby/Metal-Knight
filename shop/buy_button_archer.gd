extends TextureButton
var amount = 0
signal update_amount
var max_amount = null
func _process(delta):
	max_amount = DataStorage.SA_max_amount
	amount = DataStorage.SA_amount
func _on_buy_button_pressed():
	if amount < max_amount and Global.coins >= DataStorage.SA_cost:
		Global.coins -= DataStorage.SA_cost
		DataStorage.SA_amount += 1
