extends Control


func _process(_delta):
	var input_direction = Input.get_vector("MOVE_LEFT", "MOVE_RIGHT", "MOVE_FORWARD", "MOVE_BACKWARD")
	if input_direction:
		$Control/AnimationPlayer.play("MOVING")
	else:
		$Control/AnimationPlayer.play("RESET")
