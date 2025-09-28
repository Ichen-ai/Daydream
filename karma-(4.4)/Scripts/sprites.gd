extends CharacterBody2D

@onready var sprites: AnimatedSprite2D = $AnimatedSprite2D

#scale variables
var jScaleX = 0.5
var jScaleY = 0.5
var sScaleX = 0.5
var sScaleY = 0.5
var bScaleX = 0.5
var bScaleY = 0.5


func _ready() -> void:
	sprites.play("NOONE")

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		#will add sick jake later
		if 0 < Main.jakeKarma and Main.jakeKarma <= 33:
			sprites.play("Normal Jake")
			sprites.scale = Vector2(jScaleX, jScaleY)
			sprites.position = Vector2(10, 10)
		if 34 <= Main.jakeKarma and Main.jakeKarma <= 66:
			sprites.play("Sleep Deprived Jake")
			sprites.scale = Vector2(jScaleX, jScaleY)
			sprites.position = Vector2(10, 10)
		if 67 <= Main.jakeKarma and Main.jakeKarma <= 99:
			sprites.play("Hurt Jake")
			sprites.scale = Vector2(jScaleX, jScaleY)
			sprites.position = Vector2(10, 10)
		else:
			sprites.play("NOONE")
	if Input.is_action_just_pressed("button3"):
		sprites.play("Sad Susan")
		sprites.scale = Vector2(1.25, 1.25)
		sprites.position = Vector2(40, 50)
	if Input.is_action_just_pressed("button5"):
		sprites.play("Billy")
		sprites.scale = Vector2(1, 1)
		sprites.position = Vector2(0, 0)
