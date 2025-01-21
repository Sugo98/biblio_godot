extends CharacterBody2D

@export var initial_position : Vector2
@export var random_range : float
@export var speed : Vector2

#lled when the node enters the scene tree for the first time.
func _ready() -> void:
	position = initial_position
	position.y += randf_range(-random_range,+random_range)
	velocity = speed

func _process(delta: float) -> void:
	move_and_slide()
