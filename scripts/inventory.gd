extends Node

class_name inventory
@export var items : Array[inventoryItem] = []
var current_item: int = 0
var max_size: int = 1

func _ready():
	displayInventory()
	pass
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("inventory_up"):
		current_item -=1
		if current_item < 0:
			current_item = 0
		print(current_item)
	if Input.is_action_just_pressed("inventory_down"):
		current_item+=1
		print(current_item)
		if current_item > items.size()-1:
			current_item = 0
func selectItem():
	pass

func displayInventory():
	print("The current item is " + "current_item")
	print("The cost is " + str(items[current_item].itemPrice))
	for item in items:
		print(item.itemDescription)
		print(item.itemPrice)

func addItem():
	#check if player collides w/ item
	#add item to inventory
	
	pass
	
func removeItem():
	pass
