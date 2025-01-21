extends Label

var score_p1
var score_p2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score_p1 = 0
	score_p2 = 0
	update_score()

func update_score():
	text = str(score_p1) + " - " + str(score_p2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func player1_score(_body):
	score_p1 += 1
	update_score()
