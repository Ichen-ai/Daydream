extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2d

var monitor = 1;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		animated_sprite.play("Monitor 1")
		print("button1 pressed")
	if Input.is_action_just_pressed("button2"):
		animated_sprite.play("Monitor 2")
		print("button2 pressed")
	if Input.is_action_just_pressed("button3"):
		animated_sprite.play("Monitor 3")
	if Input.is_action_just_pressed("button4"):
		animated_sprite.play("Monitor 4")
	if Input.is_action_just_pressed("button5"):
		animated_sprite.play("Monitor 5")
	if Input.is_action_just_pressed("button6"):
		animated_sprite.play("Monitor 6")
