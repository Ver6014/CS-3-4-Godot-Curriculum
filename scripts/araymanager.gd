extends Node
const PLAYER = preload("uid://cqvpxnx2pwqhk")
var inventor : Array = []
var itempos

func check_inventor():
	print(inventor)

func add_item(int, item):
	inventor.insert(int, item)

func remove_item():
	inventor.remove_at(itempos)
