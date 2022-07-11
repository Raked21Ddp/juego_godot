extends Area2D

export (String) var escena


func _on_Portal_body_entered(body):
	if body.name == "jugador":
		get_tree().change_scene("res://"+escena+".tscn")
		
	pass # Replace with function body.
