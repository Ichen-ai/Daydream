extends Node2D

@onready var sprite_2d: AnimatedSprite2D = $Button/AnimatedSprite2D
@onready var label: Label = $Button/Label

var jakeKarma = 75
var susanKarma = 75
var billyKarma = 75

var greenButtonX = -129
var greenButtonY = 100

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
	
