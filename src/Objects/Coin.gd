extends Area2D

onready var anim_player: AnimationPlayer = get_node("coin/AnimationPlayer")

func _on_body_entered(body):
	anim_player.play("fade_out")


# Create animation in gdscript instead of "animation" Godot tool 
