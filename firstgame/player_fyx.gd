extends CharacterBody2D

var direction:Vector2
var speed:=500
@export var gravity := 200

func get_input():
	direction= Input.get_vector("left","right","up","down")
	
func apply_gravity(delta):
	velocity.y +=gravity * delta
	
func _physics_process(_delta: float) -> void:
	get_input()
	velocity = direction*speed
	move_and_slide()
	
		
