extends VehicleBody


func _process(delta):
	
	if Input.is_action_pressed("up"):
		engine_force += 1.1
		engine_force = clamp(engine_force, 0, 400)
	else:
		engine_force -= 1.1
		engine_force = clamp(engine_force, 0, 400)
	
	if Input.is_action_pressed("right"):
		print("no")
		steering += -1.1
		steering = clamp(steering, 0, 1.5)
	elif Input.is_action_pressed("left"):
		print("yo")
		steering += 1.1
		steering = clamp(steering, 0, 1.5)
	else:
		steering = 0
	
#	if Input.is_action_pressed("left"):
#		print("yo")
#		steering += 1.1
#		steering = clamp(steering, 0, -2)
#	else:
#		steering -= 1.1
#		steering = clamp(steering, 0, -2)
#

