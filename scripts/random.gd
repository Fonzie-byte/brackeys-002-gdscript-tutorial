extends Node


func _input(event):
	if event.is_action_pressed("my_action"):
		var roll = randf();

		if roll < .8:
			print("Common item.")
		else:
			print("RARE item!")

		var stat = randi_range(1, 6) + randi_range(1, 6) + randi_range(1, 6)
		print("You rolled " + str(stat) + " for your stat")
