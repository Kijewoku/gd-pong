extends Area2D

@export var speed: float = 300.0
var direction = Vector2.ZERO
var side_options = [ct.Side.LEFT, ct.Side.RIGHT]

func _ready():
	set_initial_direction()

func _process(delta):
	move_ball(delta)
	handle_screen_bounce()

func set_initial_direction():
	direction = choose_direction().normalized()

func choose_direction() -> Vector2:
	var side = side_options[randi() % side_options.size()];
	
	if side == ct.Side.LEFT:
		return Vector2(-1, randf_range(-0.5, 0.5))
	else:
		return Vector2(1, randf_range(-0.5, 0.5))

func move_ball(delta):
	position += direction * speed * delta

func handle_screen_bounce():
	if position.y <= 0 or position.y >= get_viewport_rect().size.y:
		direction.y = -direction.y

func _on_Ball_body_entered(body):
	reverse_horizontal_direction()

func reverse_horizontal_direction():
	direction.x = -direction.x
