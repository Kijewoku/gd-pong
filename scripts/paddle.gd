extends CharacterBody2D

@export var side: ct.Side = ct.Side.LEFT
@export var speed: float = 400.0

func _physics_process(delta):
	var direction = Vector2.ZERO
	if side == ct.Side.LEFT:
		if Input.is_action_pressed("move_up"):
			direction.y -= 1
		if Input.is_action_pressed("move_down"):
			direction.y += 1
	elif side == ct.Side.RIGHT:
		if Input.is_action_pressed("ui_up"):
			direction.y -= 1
		if Input.is_action_pressed("ui_down"):
			direction.y += 1

	velocity = direction.normalized() * speed
	move_and_slide()
