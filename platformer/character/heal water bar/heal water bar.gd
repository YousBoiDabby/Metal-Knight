extends Node2D
var fill = 0
var max_fill = 3
func fill():
	if fill < max_fill:
		$Sprite.frame += 1
		fill += 1
		print(fill)
	

# this empties one bar from the heal bar
func empty():
	if fill > 0:
		print(fill)
		$Sprite.frame -= 1
		fill -= 1
