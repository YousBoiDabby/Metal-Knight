extends Sprite
var damage = DataStorage.AS_damage
var take_dmg = false
var subtract_hp
var num = 0
var WANEIS = 0
signal SUS
func _on_Aggro_area_entered(area):
	if !is_in_group("arrow"):
			if !is_in_group("tower_no_touchy"):
				if !is_in_group("no"):
					$Timer.start()
					num += 1
					if DataStorage.start_wave == true:
						take_dmg = true
						subtract_hp = area.get_parent().get_parent()

func _on_Aggro_area_exited(area):
	num -= 1
	


func _on_Timer_timeout():
	if num >= 1:
		subtract_hp.play_animation()
		emit_signal("SUS")
		subtract_hp.hp -= 2.5
