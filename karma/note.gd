extends StaticBody2D

@onready var notebook: AnimatedSprite2D = $AnimatedSprite2D
@onready var log: Label = $log

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	notebook.play("blank")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		notebook.play("blank")
	if Input.is_action_just_pressed("button2"):
		notebook.play("blank")
	if Input.is_action_just_pressed("button3"):
		notebook.play("blank")
	if Input.is_action_just_pressed("button4"):
		notebook.play("notebook")
		log.text = "Jake"
	if Input.is_action_just_pressed("button5"):
		notebook.play("notebook")
		log.text = "Susan"
	if Input.is_action_just_pressed("button6"):
		log.text = "Billy"
		notebook.play("notebook")
	
