extends Sprite
signal nuevo_juego

func _ready():
	pass 
	


func _on_Button_pressed():
	get_tree().change_scene("res://personajes/mundo1.tscn")


func _on_exit_pressed():
	
	get_tree().quit()
	$exit.hider()
