extends Node2D

@onready var sprite_2d: AnimatedSprite2D = $Button/AnimatedSprite2D
@onready var sprite2_2d: AnimatedSprite2D = $Button2/AnimatedSprite2D

@onready var day_counter: Label = $DayCounter
@onready var label: Label = $Button/Label
@onready var label_2: Label = $Button2/Label2
@onready var audio_stream_player_3: AudioStreamPlayer = $AudioStreamPlayer3
@onready var karmaT: Label = $KarmaTraacker

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
				karmaT.text = "Beat up:|\n+10 Karma"
			else:
				Main.jakeKarma -= 15
				karmaT.text = "Saved by \nTeacher!\n-15 Karma"
		if curJP == "Project":
			if randint < 7:
				Main.jakeKarma -= 10
				karmaT.text = "Got work done!\n-10 Karma"
			elif randint <= 8:
				Main.jakeKarma += 10
				karmaT.text = "Angry Parent!\n+10 Karma"
			else:
				Main.jakeKarma += 15
				karmaT.text = "Boot out club!\n+15 Karma"
		if curJP == "Test":
			if randint <= 8:
				Main.jakeKarma += 20
				karmaT.text = "Got Sick!\n+20 Karma"
			else:
				Main.jakeKarma -= 5
				karmaT.text = "Winged it!\n-5 Karma"
	if Main.curMonitor == 2:
		if curSP == "Grief":
			Main.susanKarma += 5
			karmaT.text = "Sad.\n+5 Karma"
		if curSP == "Gossip":
			if randint <= 5:
				Main.susanKarma -= 10
				karmaT.text = "They apologized.\n-10 Karma"
			else:
				Main.susanKarma += 20
				karmaT.text = "They fight back,\n+20 Karma"
		if curSP == "Dinner":
			Main.susanKarma += 5
			karmaT.text = "No socializing.\n+5 Karma"
	if Main.curMonitor == 3:
		if curBP == "starving":
			if randint <= 5:
				Main.billyKarma -= 10
				karmaT.text = "Success!\n-10 Karma"
			else:
				Main.billyKarma += 10
				karmaT.text = "No charity:\n+10 Karma"
		if curBP == "Strong":
			if randint <= 5:
				Main.billyKarma += 15
				karmaT.text = "Used all\nenergy!\n+15 Karma"
			else:
				Main.billyKarma += 20
				karmaT.text = "Arrested!\n+20 Karma"
		if curBP == "Money":
			if randint <= 9:
				Main.billyKarma += 5
				karmaT.text = "What did\nu expect?\n+5 Karma"
			else:
				Main.billyKarma -= 30
				karmaT.text = "TREASURE!!!\n-30 Karma"
		
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
				karmaT.text = "Defeat bullies!\n-15 Karma"
			else:
				Main.jakeKarma += 20
				karmaT.text = "Gets beat up\nat school \nand at\nthe dojo\n+20 Karma"
		if curJP == "Project":
			if randint <= 8:
				Main.jakeKarma += 10
				karmaT.text = "Sleep Deprived.\n+10 Karma"
			else:
				Main.jakeKarma -= 10
				karmaT.text = "Works out,\n-10 Karma"
		if curJP == "Test":
			if randint <= 7:
				Main.jakeKarma -= 10
				karmaT.text = "Pass A+.\n-10 Karma"
			else:
				Main.jakeKarma += 10
				karmaT.text = "Fail anyway.\n+10 Karma"
	if Main.curMonitor == 2:
		if curSP == "Grief":
			if randint <= 8:
				Main.susanKarma -= 5
				karmaT.text = "Sucess!\n-5 Karma"
			elif randint <= 9:
				Main.susanKarma += 20
				karmaT.text = "Got hurt.\n+20 Karma"
			else:
				Main.susanKarma += 5
				karmaT.text = "didn't work.\n+5 Karma"
		if curSP == "Gossip":
			karmaT.text = "Gossip is not\nvery effective"
		if curSP == "Dinner":
			if randint <= 5:
				Main.susanKarma -= 10
				karmaT.text = "Enjoy company,\n-10 Karma"
			else:
				Main.susanKarma += 10
				karmaT.text = "Hate company,\n+10 Karma"
	if Main.curMonitor == 3:
		if curBP == "starving":
			if randint <= 7:
				Main.billyKarma -= 15
				karmaT.text = "Grow Healthy!\n-15 Karma"
			else:
				Main.billyKarma += 15
				karmaT.text = "Waste money.\n+15 Karma"
		if curBP == "Strong":
			if randint <= 9:
				Main.billyKarma -= 20
				karmaT.text = "Gets Paid!\n-20 Karma"
			else:
				Main.billyKarma += 5
				karmaT.text = "Gets injured,\n+5 Karma"
		if curBP == "Money":
			if randint <= 8:
				Main.billyKarma -= 20
				karmaT.text = "Success!\n-20 Karma"
			else:
				Main.billyKarma += 10
				karmaT.text = "Fail!\n+10 Karma"
	dayText()
	Main.curJP = JakePrompt[rng.randi_range(0, 2)]
	Main.curSP = SusanPrompt[rng.randi_range(0, 2)]
	Main.curBP = BillyPrompt[rng.randi_range(0, 2)]
