extends Label
var max_amount = 0
var amount = 0
func _ready():
	max_amount = DataStorage.AS_max_amount
func _process(delta):
	amount = DataStorage.AS_amount
	text = ('You have ' + String(amount) +'/' + String(max_amount))
