extends Node2D

var player1_score: int = 0
var player2_score: int = 0

@onready var left_paddle = $PaddleLeft
@onready var right_paddle = $PaddleRight
@onready var ball = $Ball
@onready var player1_score_component = $Player1Score
@onready var player2_score_component = $Player2Score

func _ready():
	position_all()
	update_scores()
	
	get_viewport().connect("size_changed", Callable(self, "_on_size_changed"))


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

func position_all():
	left_paddle.position_paddle()
	right_paddle.position_paddle()
	ball.position_ball()
	player1_score_component.position_score()
	player2_score_component.position_score()
	
func _on_size_changed():
	position_all()
