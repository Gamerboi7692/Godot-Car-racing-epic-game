extends Spatial

""""
The main node is where all the 'magic' happens.
It is the true thing, that gets the input and
passes it down to the car node.
"""
var car : VehicleBody #we need to store the instance of the car

func _ready():
	car = $cargltf #get the car instance by node reference

#Process the input every frame
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		#set the car's force via dot-notation: node.property
		car.engine_force += 1.1
		car.engine_force = clamp(car.engine_force, 0, 400)
	
	#down doesn't work for some reason
	elif Input.is_action_pressed("ui_down"):
		car.engine_force -= 1.1
		car.engine_force = clamp(car.engine_force, 0, 400)
	else:
		car.engine_force = 0
	
	#right doesn't work for some reason
	if Input.is_action_pressed("ui_right"):
		print("no")
		car.steering += -1.1
		car.steering = clamp(car.steering, 0, 1.5)
	
	elif Input.is_action_pressed("ui_left"):
		print("yo")
		car.steering += 1.1
		car.steering = clamp(car.steering, 0, 1.5)
	else:
		car.steering = 0
	
#	if Input.is_action_pressed("left"):
#		print("yo")
#		steering += 1.1
#		steering = clamp(steering, 0, -2)
#	else:
#		steering -= 1.1
#		steering = clamp(steering, 0, -2)
