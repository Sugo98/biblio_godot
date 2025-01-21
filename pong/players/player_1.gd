extends CharacterBody2D


const SPEED = 300.0

func _ready():
	position = Vector2(40,320)

func _physics_process(delta: float) -> void:
	
	var input_dir :float = Input.get_axis("p1_up", "p1_down")
	var direction := Vector2(0,input_dir)
	velocity = direction * SPEED

	move_and_slide()
