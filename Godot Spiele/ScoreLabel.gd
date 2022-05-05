extends Label

var score = 0

func _on_wall_squashed():
	score += 1
	text = "Score: %s" % score
