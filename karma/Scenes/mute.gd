extends TextureButton

@onready var audio_stream_player_1: AudioStreamPlayer = $"../AudioStreamPlayer1"
@onready var mute_button: TextureButton = $"."

var is_muted: bool = false

const SOUND_ICON = preload("uid://qiirc8l1j7og")
const MUTE_ICON = preload("uid://dgd8jcis6t4ua")

func _on_pressed() -> void:
	if is_muted:
		audio_stream_player_1.volume_db = -7
		is_muted = false
		$".".texture_normal = SOUND_ICON
	else:
		audio_stream_player_1.volume_db = -80
		is_muted = true
		$".".texture_normal = MUTE_ICON
