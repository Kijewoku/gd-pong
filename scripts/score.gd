extends Control

@export var player_id: int
var score: int = 0

@onready var score_label: Label = $Label

func _ready():
	update_score_label()

func set_score(new_score: int):
	score = new_score
	update_score_label()

func update_score_label():
	score_label.text = str(score)
