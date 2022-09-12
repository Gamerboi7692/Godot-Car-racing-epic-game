extends Spatial

var max_rpm = 400
var max_torque = 200
onready var car = $cargltf

#Process the input every frame
func _process(delta):
	
	var acceleration = Input.get_axis("back", "up") * 50
	car.steering = lerp(car.steering, Input.get_axis("right", "left") * 0.3, 5 * delta)
	var rpm = $cargltf/wheenBL.get_rpm()
	$cargltf/wheenBL.engine_force = acceleration * max_torque * (1 - abs(rpm) / max_rpm)
	rpm = $cargltf/wheelBR.get_rpm()
	$cargltf/wheelBR.engine_force = acceleration * max_torque * (1 - abs(rpm) / max_rpm)
