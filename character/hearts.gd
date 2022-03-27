extends Node2D
var max_health = 3
var health = max_health

# Called when the node enters the scene tree for the first time.
	
func _ready():
	$TextureRect.margin_right = (max_health * 54)

# Called every frame. 'delta' is the elapsed time since the previous frame.
		
func _process(delta):
	$TextureRect2.margin_right = (max_health * 54)
		
		
func losehealth(health_lost):
	health -= health_lost
	$TextureRect.margin_right = (health * 54)

func heal():
	health = max_health
	$TextureRect.margin_right = (health * 54)
