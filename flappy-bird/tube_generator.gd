extends Node2D

@export var tube_scene : PackedScene
@export var generator_timer : Timer

func _ready():
	pass

func create_tube():
	var new_tube = tube_scene.instantiate()
	add_child(new_tube)

func inizia_generazione_tubi():
	generator_timer.start()


func _on_bird_termina_gioco(punteggio: int) -> void:
	for tubo in get_children():
		tubo.queue_free()
	generator_timer.stop()
