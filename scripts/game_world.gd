extends Node2D
class_name GameWorld

# Player reference - our main character
@onready var player = "res://scenes/player.tscn"

# Test objects for character methods
@onready var spike = "res://scenes/spike.tscn"
@onready var health_potion = "res://scenes/health_potion.tscn"

func _ready():
	pass



# TODO: Add game management methods here (Future lessons)
# - spawn_enemy()
# - handle_combat()  
# - check_game_over()
