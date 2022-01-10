extends "res://src/Actors/Actor.gd"


func _ready():
	set_physics_process(false) # deactivate the enemy at start of the game
	_velocity.x = -speed.x # go to the left

func _physics_process(delta):
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
