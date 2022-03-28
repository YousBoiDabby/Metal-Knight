extends TextureButton
var tower
func _ready():
	tower = 'nothing'
func _process(_delta):
	if DataStorage.highlighted == false:
		tower = 'nothing'
	if DataStorage.highlighted == true:
		visible = true
	else:
		visible = false
func _on_place_down6_pressed():
	if tower != 'nothing':
		queue_free()
func _on_select_acidic_slime():
	tower = 'acidic_slime'
func _on_select2_acidic_slime():
	tower = 'acidic_slime'

func _on_select_swift_archer():
	tower = 'swift_archer'

func _on_select2_swift_archer():
	tower = 'swift_archer'

func _on_select3_acidic_slime():
	tower = 'acidic_slime'

func _on_select3_swift_archer():
	tower = 'swift_archer'


func _on_area1_no_duplicate():
	tower = 'nothing'


func _on_area2_no_duplicate():
	tower = 'nothing'


func _on_area3_no_duplicate():
	tower = 'nothing'


func _on_area4_no_duplicate():
	tower = 'nothing'


func _on_select_nothing():
	tower = 'nothing'


func _on_select2_nothing():
	tower = 'nothing'


func _on_select3_nothing():
	tower = 'nothing'


func _on_area5_no_duplicate():
	tower = 'nothing'



func _on_area7_no_duplicate():
	tower = 'nothing'
