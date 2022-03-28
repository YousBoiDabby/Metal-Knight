extends Area2D
var arrow = preload("res://wave/projectiles/projectiles.tscn")
var damage = false
var subtract_hp
var target_x
var num
var target_y
var enemy_sprite
var arrow_instance
func _ready():
	damage = false
func _physics_process(delta):
	pass
func _on_ShootTimer_timeout():
	if DataStorage.start_wave == true:
		if damage == true:
			if !is_in_group("tower_no_touchy"):
				if !is_in_group("no"):
					arrow_instance = arrow.instance()
					subtract_hp.add_child(arrow_instance)
					subtract_hp.play_animation()
					subtract_hp.hp -= 5
					$remove_arrow.start()


func _on_Aggro_area_entered(area):
	if DataStorage.start_wave == true:
		subtract_hp = area.get_parent().get_parent()
		enemy_sprite = area.get_parent()
		damage = true
		$ShootTimer.start()

func _on_Aggro_area_exited(area):
	damage = false
	#subtract_hp.remove_child(arrow_instance)
	$ShootTimer.stop()
func _process(delta):
	pass


func _on_remove_arrow_timeout():
	if damage == true:
		subtract_hp.remove_child(arrow_instance)
	$remove_arrow.stop()
