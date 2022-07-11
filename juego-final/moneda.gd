extends Area2D

export var valor = 1 

func _process(delta: float)-> void:
	rotation_degrees += 90 *delta

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_moneda_body_entered(body: Node)->void:
	if body.has_method("recoletarmoneda") and body.name == "escena jugador":
		body.recolectarmoneda(valor)
		queue_free()
	pass # Replace with function body.
