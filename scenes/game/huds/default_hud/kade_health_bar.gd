extends HealthBar

func update_score_label() -> void:
	score_label.text = 'Score:%d | Misses:%d | Accuracy:%.3f%% (%s)' % [
		game.score,
		game.misses,
		GameUtils.truncate_float_to(game.accuracy, 3),
		game.rank,
	]
