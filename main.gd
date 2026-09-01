extends Node2D

const BERRY := preload("res://berry.tscn")

var berries: int = 0

func _ready() -> void:
    # Demo 3 - bend time: uncomment, run, and enjoy global slow motion.
    # Engine.time_scale = 0.3
    for i in range(12):
        var berry := BERRY.instantiate()
        berry.position = Vector2(120 + i * 80, 324)
        berry.eaten.connect(_on_berry_eaten)
        add_child(berry)

func _on_berry_eaten() -> void:
    berries += 1
    print("Marionberries: ", berries)
