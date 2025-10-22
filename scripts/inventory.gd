extends Node

class_name inventory
@export var items : Array[inventoryItem] = []


func _ready():
	displayInventory()
	pass
	
func selectItem():
	pass

func displayInventory():
	for item in items:
		print(item.itemDescription)
		print(item.itemPrice)

func addItem():
	#check if player collides w/ item
	#add item to inventory
	
	pass
	
func removeItem():
	pass
