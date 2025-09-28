extends Node2D

@onready var sprite_2d: AnimatedSprite2D = $Button/AnimatedSprite2D
@onready var sprite2_2d: AnimatedSprite2D = $Button2/AnimatedSprite2D

@onready var label: Label = $Button/Label
@onready var label_2: Label = $Button2/Label2

var jakeKarma = 25
var susanKarma = 50
var billyKarma = 75

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	

func _on_button_button_down() -> void:
	sprite_2d.play("Press")
	label.position = Vector2(16, 3.3)

func _on_button_button_up() -> void:
	sprite_2d.play("Idle")
	label.position = Vector2(16, 0)

func _on_button_2_button_down() -> void:
	sprite2_2d.play("Press2")
	label_2.position = Vector2(16,2.3)

func _on_button_2_button_up() -> void:
	sprite2_2d.play("Idle2")
	label_2.position = Vector2(16, -1)
