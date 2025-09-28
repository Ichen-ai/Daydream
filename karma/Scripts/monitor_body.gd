extends CharacterBody2D

@onready var monitor: AnimatedSprite2D = $Monitor
@onready var swtchSound = $AudioStreamPlayer2D
@onready var audio_stream_player_2: AudioStreamPlayer = $"../AudioStreamPlayer2"

var jakeSaved = false
var susanSaved = false
var billy = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		audio_stream_player_2.play()
		monitor.play("Monitor 1")
		Main.curMonitor = 1
	if Input.is_action_just_pressed("button2"):
		audio_stream_player_2.play()
		monitor.play("Monitor 2")
		Main.curMonitor = 2
	if Input.is_action_just_pressed("button3"):
		audio_stream_player_2.play()
		monitor.play("Monitor 3")
		Main.curMonitor = 3
	if Input.is_action_just_pressed("button4"):
		audio_stream_player_2.play()
		monitor.play("Monitor 4")
		Main.curMonitor = 4
	if Input.is_action_just_pressed("button5"):
		audio_stream_player_2.play()
		monitor.play("Monitor 5")
		Main.curMonitor = 5
	if Input.is_action_just_pressed("button6"):
		audio_stream_player_2.play()
		monitor.play("Monitor 6")
		Main.curMonitor = 6
		
		
