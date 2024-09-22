extends Node2D

var player1_score: int = 0
var player2_score: int = 0

@onready var player1_score_component = $Player1Score
@onready var player2_score_component = $Player2Score
@onready var ball = $Ball

func _ready():
	update_scores()

func add_point_to_player1():
	player1_score += 1
	update_scores()
	reset_ball()

func add_point_to_player2():
	player2_score += 1
	update_scores()
	reset_ball()

func update_scores():
	player1_score_component.set_score(player1_score)
	player2_score_component.set_score(player2_score)

func reset_ball():
	ball.position = get_viewport_rect().size / 2
	ball.set_initial_direction()
