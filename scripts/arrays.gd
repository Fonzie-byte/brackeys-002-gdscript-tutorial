extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var dynamic_by_default = ["Hardcore", "Henry", 42, 1.92]
	# Change any of the elements to a non-string, and you'll see an error in the editor
	var static_typing_possible: Array[String] = ["Potion of Minor Healing", "Harp", "+1 Charisma Underwear"]
	
	print("I have a " + static_typing_possible[0])
	
	# Elements can be changed, added and removed on-the fly
	static_typing_possible[2] = "Dirty Underwear"
	static_typing_possible.remove_at(1)
	static_typing_possible.append("Feather")
	print(static_typing_possible)

	# On statically typed, this is simply ignored...
	static_typing_possible.append(55)
	
	for item in static_typing_possible:
		print(item)
	
	# From 0 until and including 7
	for n in 8:
		if randf() > .5:
			print("heads")
		else:
			print("tails")
	
	var glass := 0.0
	
	while glass < .5:
		glass += randf_range(0.01, 0.1)
		print(glass)

	print("Glass is now half full")
	
	var team_rocket_members = {
		"Jessie": 2,
		"James": 3,
		"Giovanni": 20,
	}
	print(team_rocket_members)
	
	team_rocket_members["James"] = 1
	team_rocket_members["Me"] = 999
	print(team_rocket_members["James"])
	
	for member in team_rocket_members:
		print(member + " is Lv. " + str(team_rocket_members[member]))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
