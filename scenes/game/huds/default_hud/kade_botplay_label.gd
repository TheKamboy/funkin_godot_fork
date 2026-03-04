extends Label

func _ready() -> void:
	text = ""
	_on_hud_setup()

func _on_botplay_changed(botplay: bool) -> void:
	if botplay:
		text = "BOTPLAY"
	else:
		text = ""

func _on_hud_setup() -> void:
	if is_instance_valid(Game.instance):
		Game.instance.botplay_changed.connect(_on_botplay_changed)
