extends Area2D

func _on_wall_area_entered(area, ball):
	if area.name == "Ball":
		#oops, ball went out of game place, reset
		ball.connect("squashed", $UserInterfce/ScoreLabel, "_on_wall_squashed")		
		ball.squash()
		area.reset()
