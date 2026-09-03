extends CharacterBody2D

@export var speed: float = 260.0

func _process(delta: float) -> void:
    var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")

    position += direction * speed * delta
    position = position.clamp(Vector2.ZERO, get_viewport_rect().size)

    if direction != Vector2.ZERO:
        _update_facing(direction)

func _update_facing(direction: Vector2) -> void:
    var sprite := $Sprite2D as Sprite2D
    if absf(direction.x) > absf(direction.y):
        sprite.flip_h = direction.x < 0
        sprite.rotation_degrees = 0
    else:
        sprite.flip_h = false
        sprite.rotation_degrees = -90 if direction.y < 0 else 90
