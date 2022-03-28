extends Path2D
var spawnTime = 3
var timer = 0
signal win
var eye_monster = load("res://wave/enemies/enemies.tscn")
var bug_monster = load("res://wave/enemies/bug_monster.tscn")
var totalTime = 0
var scene = eye_monster
var stop_spawn = false
var rando_spawn
var spawn = false
var enemy_type
func _process(delta):
	if DataStorage.wave == 2:
		stop_spawn = false
		randomize()
		spawnTime = rand_range(2.5,3)	
	if DataStorage.wave == 3:
		stop_spawn = false
		randomize()
		spawnTime = rand_range(2.5,3)	
	if spawn == true:
		timer = timer + delta
		
		if (timer > spawnTime):
			if stop_spawn == false:
				if DataStorage.wave == 1:
					scene = eye_monster
				if DataStorage.wave == 2:
					scene = bug_monster
				if DataStorage.wave == 3:
					randomize()
					enemy_type = rand_range(1,2)
					if enemy_type >= 1 and enemy_type <= 2:
						scene = eye_monster
					if enemy_type >= 2 and enemy_type <= 3:
						scene = bug_monster
				var enemy = scene.instance()
				add_child(enemy)
				timer = 0
				totalTime += 1
				if DataStorage.wave == 1:
					if totalTime >= 15:
						DataStorage.wave = 2
						stop_spawn = true
						totalTime = 0
				if DataStorage.wave == 2:
					if totalTime >= 15:
						DataStorage.wave = 3
						stop_spawn = true
						totalTime = 0
				if DataStorage.wave == 3:
					if totalTime >= 25:
						DataStorage.wave = 4
						emit_signal("win")
						stop_spawn = true
						totalTime = 0


func _on_start_wave_pressed():
	spawn = true
