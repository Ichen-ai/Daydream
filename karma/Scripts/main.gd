extends Node2D

@onready var sprite_2d: AnimatedSprite2D = $Button/AnimatedSprite2D
@onready var sprite2_2d: AnimatedSprite2D = $Button2/AnimatedSprite2D

@onready var label: Label = $Button/Label
@onready var label_2: Label = $Button2/Label2

#Karma
var jakeKarma = 25
var susanKarma = 50
var billyKarma = 75

#Day cycle
var day = 1

#Prompts
var JakePrompt = ["Bullied", "Project", "Test"]
var SusanPrompt = ["Grief", "Gossip", "Dinner"]
var BillyPrompt = ["Starving", "Strong", "Money"]

var rng = RandomNumberGenerator.new()

#current prompts
var curJP = JakePrompt[rng.randi_range(0, 2)]
var curSP = SusanPrompt[rng.randi_range(0, 2)]
var curBP = BillyPrompt[rng.randi_range(0, 2)]

func _on_button_button_down() -> void:
	sprite_2d.play("Press")
	label.position = Vector2(16, 3.3)

func _on_button_button_up() -> void:
	sprite_2d.play("Idle")
	label.position = Vector2(16, 0)
	day += 1
	curJP = JakePrompt[rng.randi_range(0, 2)]
	curSP = SusanPrompt[rng.randi_range(0, 2)]
	curBP = BillyPrompt[rng.randi_range(0, 2)]

func _on_button_2_button_down() -> void:
	sprite2_2d.play("Press2")
	label_2.position = Vector2(16,2.3)

func _on_button_2_button_up() -> void:
	sprite2_2d.play("Idle2")
	label_2.position = Vector2(16, -1)
	day += 1
	curJP = JakePrompt[rng.randi_range(0, 2)]
	curSP = SusanPrompt[rng.randi_range(0, 2)]
	curBP = BillyPrompt[rng.randi_range(0, 2)]
