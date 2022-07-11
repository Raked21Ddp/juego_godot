extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	
	for body in bodies:
		if body.name == "jugador":
			body.contadordemonedas +=1
			get_parent().remove.child(self)
			print (body.contadordemonedas)



