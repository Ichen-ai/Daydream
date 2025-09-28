extends CharacterBody2D

@onready var sprites: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	sprites.play("NOONE")

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		print(Main.jakeKarma)
		if 0 < Main.jakeKarma or Main.jakeKarma <= 33:
			sprites.play("Normal Jake")
			sprites.scale = Vector2(0.5, 0.5)
			sprites.position = Vector2(10, 10)
	if Input.is_action_just_pressed("button3"):
		sprites.play("Sad Susan")
		sprites.scale = Vector2(1.25, 1.25)
		sprites.position = Vector2(40, 50)
	if Input.is_action_just_pressed("button5"):
		sprites.play("Billy")
		sprites.scale = Vector2(1, 1)
		sprites.position = Vector2(0, 0)
