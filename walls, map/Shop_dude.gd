extends Sprite



func _on_Shop_body_entered(body):
	get_tree().change_scene("res://Inside_castle/shop/shop.tscn")
