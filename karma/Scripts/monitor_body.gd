extends CharacterBody2D

@onready var monitor: AnimatedSprite2D = $Monitor

var jakeSaved = false
var susanSaved = false
var billy = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		monitor.play("Monitor 1")
	if Input.is_action_just_pressed("button2"):
		monitor.play("Monitor 2")
	if Input.is_action_just_pressed("button3"):
		monitor.play("Monitor 3")
	if Input.is_action_just_pressed("button4"):
		monitor.play("Monitor 4")
	if Input.is_action_just_pressed("button5"):
		monitor.play("Monitor 5")
	if Input.is_action_just_pressed("button6"):
		monitor.play("Monitor 6")
		
		
