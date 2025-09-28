extends StaticBody2D

@onready var button: Button = $Button
@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if Main.jakeKarma <= 0 and Main.susanKarma <= 0 and Main.billyKarma <= 0:
		sprite_2d.play("Win")
		sprite_2d.show()
	if Main.jakeKarma >= 100 or Main.susanKarma >= 100 or Main.billyKarma >= 100:
		sprite_2d.play("Lose")
		sprite_2d.show()

func _on_button_pressed() -> void:
	sprite_2d.hide()
	button.hide()
