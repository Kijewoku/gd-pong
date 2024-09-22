extends CharacterBody2D

@export var side: ct.Side = ct.Side.LEFT
@export var speed: float = 400.0

var padding: int = 20

func _physics_process(delta):
	var direction = Vector2.ZERO
	var screen_size = get_viewport_rect().size
	var paddle_height = 100

	if side == ct.Side.LEFT:
		if Input.is_action_pressed("move_up") and position.y > padding:
			direction.y -= 1
		if Input.is_action_pressed("move_down") and position.y < screen_size.y - (paddle_height + padding):
			direction.y += 1
	elif side == ct.Side.RIGHT:
		if Input.is_action_pressed("ui_up") and position.y > padding:
			direction.y -= 1
		if Input.is_action_pressed("ui_down") and position.y < screen_size.y - (paddle_height + padding):
			direction.y += 1

	velocity = direction.normalized() * speed
	move_and_slide()

func position_paddle():
	var screen_size = get_viewport_rect().size
	var y_pos = (screen_size.y / 2) - 50

	if side == ct.Side.LEFT:
		self.position.x = 10
		self.position.y = y_pos

	elif side == ct.Side.RIGHT:
		self.position.x = screen_size.x - 30
		self.position.y = y_pos
