extends KinematicBody2D

var velocidad = 100
var saltoV = 1800
var gravedad = 4000
var vectorVel = Vector2.ZERO

func moverIZQDERySalto():
	vectorVel.x = 0
	
	if Input.is_action_pressed("ui_right"):
		vectorVel.x += velocidad
	if Input.is_action_pressed("ui_left"):
		vectorVel.x -= velocidad
	if Input.is_action_pressed("ui_accept"):
		if is_on_floor():
			vectorVel.y = saltoV
	
		
func _physics_process(delta : float) -> void:
	moverIZQDERySalto()
	vectorVel.y += gravedad * delta
	
	vectorVel = move_and_slide(vectorVel, Vector2.UP)
	
	


# Called when the node enters the scene tree for the first time.
func _ready()->void:
	
	pass # Replace with function body.


