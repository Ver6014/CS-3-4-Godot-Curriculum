extends Node
const PLAYER = preload("uid://cqvpxnx2pwqhk")
var inventor = PLAYER.inventor
var item 
var itempos

func check_inventor():
	print(inventor)

func add_item():
	inventor.insert(0, item)

func remove_item():
	inventor.remove_at(itempos)
