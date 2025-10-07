extends StaticBody2D
@onready var lever: Area2D = $"../Lever"
var is_closed = true
#var Lever = lever.Lever
func _process(delta):
	leverDetect()
	set_is_open()


func set_is_open() -> void:
	if is_closed:
		$AnimatedSprite2D.frame = 0
		collision_layer = 1
		$LightOccluder2D.visible = false
	else:
		$AnimatedSprite2D.frame = 1
		collision_layer = 0
		$LightOccluder2D.visible = true
		
func leverDetect():
	if lever != null:
		if lever.Lever == true:
			is_closed = false
