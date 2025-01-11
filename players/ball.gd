extends CharacterBody2D


const SPEED = 300.0
var direction

func _ready() -> void:
	reset_pallina()

func _physics_process(delta: float) -> void:
	velocity = direction * SPEED
	move_and_slide()
	#var collision = move_and_collide(velocity*delta)
	#if collision:
	#	direction.x *= -1

func reset_pallina() -> void:
	position = Vector2(575, 320)
	direction = Vector2(1,1)
	direction = direction.normalized()

func _on_game_area_body_exited(body: Node2D) -> void:
	bounce()

func bounce() ->void :
	direction.y *= -1
