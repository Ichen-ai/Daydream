extends Node2D

@onready var sprite_2d: AnimatedSprite2D = $Button/AnimatedSprite2D
@onready var sprite2_2d: AnimatedSprite2D = $Button2/AnimatedSprite2D

@onready var day_counter: Label = $DayCounter
@onready var label: Label = $Button/Label
@onready var label_2: Label = $Button2/Label2
@onready var audio_stream_player_3: AudioStreamPlayer = $AudioStreamPlayer3

#current monitor
var curMonitor = 1

#Karma
var jakeKarma = 25
var susanKarma = 50
var billyKarma = 75

#Day cycle
var day = 1

func dayText():
	day += 1
	day_counter.text = "Day\n" + str(day)

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
	audio_stream_player_3.play()
	sprite_2d.play("Press")
	label.position = Vector2(16, 3.3)

func _on_button_button_up() -> void:
	sprite_2d.play("Idle")
	label.position = Vector2(16, 0)
	var randint = rng.randi_range(0, 10)
	if Main.curMonitor == 1:
		if curJP == "Bullied":
			if randint <= 6:
				Main.jakeKarma += 10
			else:
				Main.jakeKarma -= 15
		if curJP == "Project":
			if randint < 7:
				Main.jakeKarma -= 10
			elif randint <= 8:
				Main.jakeKarma += 10
			else:
				Main.jakeKarma += 10
		if curJP == "Test":
			if randint <= 8:
				Main.jakeKarma += 20
			else:
				Main.jakeKarma -= 5
	if Main.curMonitor == 2:
		if curSP == "Grief":
			Main.susanKarma += 5
		if curSP == "Gossip":
			if randint <= 5:
				Main.susanKarma -= 10
			else:
				Main.susanKarma += 20
		if curSP == "Dinner":
			Main.susanKarma += 5
	if Main.curMonitor == 3:
		if curBP == "starving":
			if randint <= 5:
				Main.billyKarma -= 10
			else:
				Main.billyKarma += 10
		if curBP == "Strong":
			if randint <= 5:
				Main.billyKarma += 15
			else:
				Main.billyKarma += 20
		if curBP == "Money":
			if randint <= 9:
				Main.billyKarma += 5
			else:
				Main.billyKarma -= 30
		
	dayText()
	Main.curJP = JakePrompt[rng.randi_range(0, 2)]
	Main.curSP = SusanPrompt[rng.randi_range(0, 2)]
	Main.curBP = BillyPrompt[rng.randi_range(0, 2)]

func _on_button_2_button_down() -> void:
	audio_stream_player_3.play()
	sprite2_2d.play("Press2")
	label_2.position = Vector2(16,2.3)

func _on_button_2_button_up() -> void:
	sprite2_2d.play("Idle2")
	label_2.position = Vector2(16, -1)
	var randint = rng.randi_range(0, 10)
	if Main.curMonitor == 1:
		if curJP == "Bullied":
			if randint <= 6:
				Main.jakeKarma -= 15
			else:
				Main.jakeKarma += 20
		if curJP == "Project":
			if randint <= 8:
				Main.jakeKarma += 10
			else:
				Main.jakeKarma -= 10
		if curJP == "Test":
			if randint <= 7:
				Main.jakeKarma -= 10
			else:
				Main.jakeKarma += 10
	if Main.curMonitor == 2:
		if curSP == "Grief":
			if randint <= 8:
				Main.susanKarma -= 5
			elif randint <= 9:
				Main.susanKarma += 20
			else:
				Main.susanKarma += 5
		if curSP == "Gossip":
			pass
		if curSP == "Dinner":
			if randint <= 5:
				Main.susanKarma -= 10
			else:
				Main.susanKarma += 10
	if Main.curMonitor == 3:
		if curBP == "starving":
			if randint <= 7:
				Main.billyKarma -= 15
			else:
				Main.billyKarma += 15
		if curBP == "Strong":
			if randint <= 9:
				Main.billyKarma -= 20
			else:
				Main.billyKarma += 5
		if curBP == "Money":
			if randint <= 8:
				Main.billyKarma -= 20
			else:
				Main.billyKarma += 10
	dayText()
	Main.curJP = JakePrompt[rng.randi_range(0, 2)]
	Main.curSP = SusanPrompt[rng.randi_range(0, 2)]
	Main.curBP = BillyPrompt[rng.randi_range(0, 2)]
