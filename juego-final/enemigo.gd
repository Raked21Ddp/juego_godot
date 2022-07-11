extends KinematicBody2D
var velocidad = Vector2(0,0)
var gofo = true

func _physics_process(delta):
	
	if is_on_wall():
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		gofo = not gofo
		
	
	
	
	
	
	
	if gofo == true:
		velocidad.x = 100
	else:
		velocidad.x = -100
	
	velocidad =move_and_slide(velocidad, Vector2.UP)


func _on_Area2D_area_entered(area):
	if area.is_in_group("escena jugador"):
		get_tree().reload_current_scene()



func _on_Area2D_body_entered(body)->void:
	if body.has_method("morirse") and body.name == "escena jugador":
		body.morirse
	pass # Replace with function body.
