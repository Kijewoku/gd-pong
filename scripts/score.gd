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

func position_score():
	var screen_size = get_viewport_rect().size

	if player_id == 1:
		self.position.x = screen_size.x / 4
	elif player_id == 2:
		self.position.x = 3 * screen_size.x / 4

	self.position.y = 20
