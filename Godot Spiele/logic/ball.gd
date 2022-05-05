
extends Area2D
export (PackedScene) var ball_scene
const DEFAULT_SPEED = 100

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT

onready var _initial_pos = position
# Emitted when the player jumped on the mob.
signal squashed

func _process(delta):
	_speed += delta * 2
	position += _speed * delta * direction


func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED

func squash():
	emit_signal("squashed")
	queue_free()
