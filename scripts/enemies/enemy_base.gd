extends npc


@export var COIN = preload("uid://hlj4dyfo1u8l")
@export var move_speed: float = 70
@export var dialouge: Array 
@export var invintory: Array [Vector2] = []
@export var ishostle: bool = false
@export var droprate: float = 1.0
@export var state: String
@export var movepoints: Array [Vector2] = []
var current_point = 0
@export var dammage: int = 1
var direction




func _ready() -> void:
	super._ready()
	
	

func _physics_process(_delta: float) -> void:
	super._physics_process(_delta)
	movement(_delta)
	move_and_slide()
	movement(_delta)


func movement(_delta):
	var target = movepoints[current_point]
	var target_direction = position.direction_to(target)
	if ishostle == true:
		target = player.position
		target_direction = position.direction_to(target)
		velocity = target_direction * move_speed
		if position.distance_to(target) < 20:
			target = movepoints[current_point]
			
	else:
		target = movepoints[current_point]
		velocity = target_direction * move_speed
	
	

	
	if position.distance_to(target) < 3:
		current_point += 1
		if current_point == 4:
			current_point = 0


func _on_detection_radius_body_entered(body: Node2D) -> void:
	super._on_detection_radius_body_entered(body)
	if ishostle == false:
		if body.is_in_group("player"):
			print("NPC saw player")
			ishostle = true



func _on_detection_radius_body_exited(body: Node2D) -> void:
	super._on_detection_radius_body_exited(body)
	if body.is_in_group("player"):
			print("player ran away")
			ishostle = false
