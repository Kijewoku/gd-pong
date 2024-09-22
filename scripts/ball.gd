extends Area2D

@export var speed: float = 300.0

var direction = Vector2.ZERO
var side_options = [ct.Side.LEFT, ct.Side.RIGHT]

func _ready():
	set_initial_direction()
	connect("body_entered", Callable(self, "_on_Ball_body_entered"))

func _process(delta):
	move_ball(delta)
	handle_screen_bounce()
	check_goal()
	
func position_ball():
	var screen_size = get_viewport_rect().size
	self.position = screen_size / 2

func set_initial_direction():
	direction = choose_direction().normalized()

func choose_direction() -> Vector2:
	var side = side_options[randi() % side_options.size()]
	
	if side == ct.Side.LEFT:
		return Vector2(-1, randf_range(-0.5, 0.5))
	else:
		return Vector2(1, randf_range(-0.5, 0.5))

func move_ball(delta):
	position += direction * speed * delta

func handle_screen_bounce():
	if position.y <= 0 or position.y >= get_viewport_rect().size.y - 20:
		direction.y = -direction.y

func _on_Ball_body_entered(body):
	if body.is_in_group("paddle"):
		reverse_horizontal_direction()

func reverse_horizontal_direction():
	direction.x = -direction.x

func who_goal():
	if (position.x >= get_viewport_rect().size.x):
		return 1
	
	if (position.x <= 0):
		return 2
	
	return 0
	

func check_goal():
	if who_goal() == 1:
		return get_parent().add_point_to_player1()
		
	if who_goal() == 2:
		return get_parent().add_point_to_player2()
		
	pass
