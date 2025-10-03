extends Area2D

@onready var DOOR = preload("res://scenes/door.tscn")
@onready var door: AnimatableBody2D = $"../Door"



func play_animation(reverse: bool = false) -> void:
	var speed: int
	if reverse:
		speed = -1
	else:
		speed = 1
	$AnimatedSprite2D.play("", speed, reverse)


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		play_animation()
		door.set_is_open(false)
