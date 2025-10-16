@tool

extends pickup

var chestOpen = false;


func _ready() -> void:
	body_entered.connect(_on_body_entered)
func animate_opening() -> void:
	$AnimatedSprite2D.play()
	
func _on_body_entered(body: Node2D) -> void:
	if body is Player && chestOpen == false:
		animate_opening()
		
		chestOpen = true
	
		
