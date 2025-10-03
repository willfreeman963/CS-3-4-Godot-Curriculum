extends AnimatableBody2D
@onready var lever: Area2D = $"../Lever"
var Lever = lever.Lever



func set_is_open(is_open: bool) -> void:
	if is_open:
		$AnimatedSprite2D.frame = 0
		collision_layer = 1
		$LightOccluder2D.visible = false
	else:
		$AnimatedSprite2D.frame = 1
		collision_layer = 0
		$LightOccluder2D.visible = true
		
func leverDetect(is_open):
	if lever != null:
		if Lever == true:
			is_open = true
