extends CharacterBody2D

@onready var sprites: AnimatedSprite2D = $AnimatedSprite2D

#scale variables
var jScaleX = 0.5
var jScaleY = 0.5
var sScaleX = 1.25
var sScaleY = 1.25
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
		elif 34 <= Main.jakeKarma and Main.jakeKarma <= 66:
			sprites.play("Sleep Deprived Jake")
			sprites.scale = Vector2(jScaleX, jScaleY)
			sprites.position = Vector2(10, 10)
		elif 67 <= Main.jakeKarma and Main.jakeKarma <= 99:
			sprites.play("Hurt Jake")
			sprites.scale = Vector2(jScaleX, jScaleY)
			sprites.position = Vector2(10, 10)
		else:
			sprites.play("NOONE")
		
	if Input.is_action_just_pressed("button2"):
		if 0 < Main.susanKarma and Main.susanKarma <= 33:
			sprites.play("Sad Susan")
			sprites.scale = Vector2(sScaleX, sScaleY)
			sprites.position = Vector2(40, 50)
		elif 34 <= Main.susanKarma and Main.susanKarma <= 66:
			sprites.play("Susan")
			sprites.scale = Vector2(sScaleX, sScaleY)
			sprites.position = Vector2(40, 50)
		elif 67 <= Main.susanKarma and Main.susanKarma <= 99:
			sprites.play("Angry Susan")
			sprites.scale = Vector2(sScaleX, sScaleY)
			sprites.position = Vector2(40, 50)
		else:
			sprites.play("NOONE")
			
	if Input.is_action_just_pressed("button3"):
		if 0 < Main.billyKarma and Main.billyKarma <= 33:
			sprites.play("Swag Billy")
			sprites.scale = Vector2(1.25, 1.25)
			sprites.position = Vector2(0, 26)
		elif 34 <= Main.billyKarma and Main.billyKarma <= 66:
			sprites.play("Buff Billy")
			sprites.scale = Vector2(1.25, 1.25)
			sprites.position = Vector2(-30, 30)
		elif 67 <= Main.billyKarma and Main.billyKarma <= 99:
			sprites.play("Billy")
			sprites.scale = Vector2(1, 1)
			sprites.position = Vector2(0, 0)
		else:
			sprites.play("NOONE")
		#if Input.is_action_just_pressed("button3"):
			#sprites.play("Billy")
			#sprites.scale = Vector2(1, 1)
			#sprites.position = Vector2(0, 0)
