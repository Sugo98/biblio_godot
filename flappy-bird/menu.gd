extends Control

@export var score_label : Label
signal avvia_gioco
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	aggiorna_punteggio(5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_button_pressed() -> void:
	avvia_gioco.emit()
	hide()

func aggiorna_punteggio(x : int):
	score_label.text = "Punteggio: " + str(x)


func _on_bird_termina_gioco(punteggio: int) -> void:
	show()
	aggiorna_punteggio(punteggio)
