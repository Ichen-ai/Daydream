extends ProgressBar

@onready var karma_bar: TextureProgressBar = $KarmaBar

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		karma_bar.value = Main.jakeKarma
	if Input.is_action_just_pressed("button2"):
		karma_bar.value = Main.susanKarma
	if Input.is_action_just_pressed("button3"):
		karma_bar.value = Main.billyKarma
	if Input.is_action_just_pressed("button4"):
		karma_bar.value = Main.jakeKarma
	if Input.is_action_just_pressed("button5"):
		karma_bar.value = Main.susanKarma
	if Input.is_action_just_pressed("button6"):
		karma_bar.value = Main.billyKarma
