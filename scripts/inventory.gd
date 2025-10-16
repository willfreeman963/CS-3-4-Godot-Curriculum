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
	pass
	
func removeItem():
	pass
