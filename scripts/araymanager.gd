extends Node
const PLAYER = preload("uid://cqvpxnx2pwqhk")
var inventor : Array = []
var itempos

func check_inventor():
	print(inventor)

func add_item(item):
	inventor.append(item)

func remove_item():
	inventor.remove_at(itempos)

func scelect_item():
	pass

func _on_area_2d_area_entered(_area: Area2D) -> void:
	pass # Replace with function body.

func dump_inventory():
	pass
