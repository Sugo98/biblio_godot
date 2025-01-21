extends CharacterBody2D

@export var gravity : float
@export var fly_speed : float
var score : int
signal termina_gioco(punteggio : int)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func posizione_di_partenza():
	position = Vector2(533,337)
	velocity.y = - fly_speed
	score = 0
	show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("fly"):
		velocity.y = - fly_speed
	if move_and_slide():
		game_over()

func game_over():
	termina_gioco.emit(score)
	hide()  


func _on_area_2d_body_entered(body: Node2D) -> void:
	score += 1
	print(score)
