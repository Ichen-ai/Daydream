extends StaticBody2D

@onready var notebook: AnimatedSprite2D = $AnimatedSprite2D
@onready var logs: Label = $log
@onready var info: Label = $info

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	notebook.play("blank")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("button1"):
		notebook.play("blank")
		info.text = ""
	if Input.is_action_just_pressed("button2"):
		notebook.play("blank")
		info.text = ""
	if Input.is_action_just_pressed("button3"):
		notebook.play("blank")
		info.text = ""
	if Input.is_action_just_pressed("button4"):
		notebook.play("notebook")
		logs.text = "Jake"
		if Main.jakeKarma > 0:
			if Main.curJP == "Bullied":
				info.text = "Jake is being bullied at\n\n school everyday\n\nOption 1:Jake Snitches\n\nOption 2:Teach Jake \n\nTaekwondo"
			if Main.curJP == "Project":
				info.text = "Jake knows he has a huge\n\n project due but he has\n\n club after school\n\nOption 1:Screw the club\n\nOption 2:Stay after school"
			if Main.curJP == "Test":
				info.text = "Jake is really stressed out\n\n for the upcoming \n\nmath test\n\nOption 1:Procrasinate\n\nOption 2:Get math tutor"
		else:
			info.text = "Jake is saved"
	if Input.is_action_just_pressed("button5"):
		notebook.play("notebook")
		logs.text = "Susan"
		if Main.susanKarma > 0:
			if Main.curSP == "Grief":
				info.text = "Susan is thinking \n\nabout her late husband\n\nOption 1:Dwell on memories\n\nOption 2:Try to keep busy"
			if Main.curSP == "Gossip":
				info.text = "Susan hears her neighbors \n\ngossiping about her\n\nOption 1:Yell at them\n\nOption 2:Ignore them"
			if Main.curSP == "Dinner":
				info.text = "Susan gets invited to her \n\nfriend’s house for dinner\n\nOption 1:Decline\n\nOption 2:Accept"
		else:
			info.text = "Susan is saved"
	if Input.is_action_just_pressed("button6"):
		logs.text = "Billy"
		notebook.play("notebook")
		if Main.billyKarma > 0:
			if Main.curBP == "Starving":
				info.text = "Billy is starving\n\nOption 1:Beg for food\n\nOption 2:Spend \n\nremaining money"
			if Main.curBP == "Strong":
				info.text = "Billy is strong\n\nOption 1:Fight random\n\n people\n\nOption 2:Do odd jobs"
			if Main.curBP == "Money":
				info.text = "Billy finds $10\n\nOption 1:Spend on junk\n\nOption 2:Start small\n\n hustles"
		else:
			info.text = "Billy is saved"
	
