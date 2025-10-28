extends Node

class_name inventory
@export var items : Array[inventoryItem] = []
var current_item: int = 0
var max_size: int = 5

func _ready():
	displayInventory()
	pass
	
func _process(delta: float) -> void:
	#print(items)
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
	print("The current item is " , current_item)
	print("The cost is " + str(items[current_item].itemPrice))


func addItem(item: inventoryItem):
	
	if items.size() < max_size:
		items.append(item)
	else: print("our inventory is full, consider dropping an item or using an item first")
	#check for collision
	
func removeItem():
	pass
