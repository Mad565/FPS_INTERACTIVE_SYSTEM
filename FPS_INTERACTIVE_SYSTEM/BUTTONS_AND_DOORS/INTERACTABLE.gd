extends Node3D

var is_light = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	turn_light_on()

func turn_light_on():
	#toggle system
	if $RayCast3D.get_collider() is CharacterBody3D:
		if Input.is_action_just_pressed("E") and not is_light:
			$"../Light3D".visible = true
			is_light = true
		elif Input.is_action_just_pressed("E") and is_light:
			$"../Light3D".visible = false
			is_light = false
