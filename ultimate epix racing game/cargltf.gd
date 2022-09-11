extends VehicleBody


func _process(delta):
	
	if Input.is_action_pressed("up"):
		engine_force += 1.1
		engine_force = clamp(engine_force, 0, 400)
	else:
		engine_force = 0
	
	if Input.is_action_pressed("right"):
		steering = -1
	else:
		steering = 0
	
	if Input.is_action_pressed("left"):
		steering = 1
	else:
		steering = 0
	

