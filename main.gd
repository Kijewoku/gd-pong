extends Node2D

var player1_score: int = 0
var player2_score: int = 0

@onready var player1_score_label = $Player1ScoreLabel
@onready var player2_score_label = $Player2ScoreLabel
@onready var ball = $Ball

func _ready():
	update_score()

func update_score():
	player1_score_label.text = str(player1_score)
	player2_score_label.text = str(player2_score)

func add_point_to_player1():
	player1_score += 1
	update_score()
	reset_ball()

func add_point_to_player2():
	player2_score += 1
	update_score()
	reset_ball()

func reset_ball():
	ball.position = get_viewport_rect().size / 2
	ball.set_initial_direction()
