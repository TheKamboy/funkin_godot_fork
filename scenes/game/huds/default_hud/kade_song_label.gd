extends Label


func _ready() -> void:
	visible = Config.get_value("interface", "song_label_show")


func _on_botplay_changed(botplay: bool) -> void:
	update_label()


func update_label() -> void:
	text = '%s %s - GE CUSTOM BUILD - FNF' % [
		Game.instance.metadata.get_full_name().to_lower(),
		Game.difficulty.to_upper()
	]


func _on_hud_downscroll_changed(downscroll: bool) -> void:
	position.y = 12.0 if downscroll else 720.0 - 28.0


func _on_hud_setup() -> void:
	if is_instance_valid(Game.instance):
		update_label()
		Game.instance.botplay_changed.connect(_on_botplay_changed)
