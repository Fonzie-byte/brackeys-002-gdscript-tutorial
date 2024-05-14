extends Node


# @export also makes it editable in the editor!
@export var health := 20

# Constants in SCREAMING_SNAKE_CASE
const SUFFERING = true


func _ready():
	basic_types_and_casting()
	dynamic_typing()
	static_typing()
	exported_variables()
	constants()
	

# Function and variables names in snake_case
func basic_types_and_casting():
	var likes_tea = false
	var funny_number = 24
	var finished_percentage = 37.2
	var cool_guy = "Steve"

	likes_tea = bool(1)
	funny_number = int(25.98)
	finished_percentage = float(84)
	cool_guy = "Brackeys" + str(null)

	print(likes_tea)
	print(funny_number)
	print(finished_percentage)
	print(cool_guy)


func dynamic_typing():
	var location = Vector2(79, 28)

	# Types can simply change
	location = Vector3(67, 59, 76)

	print(location)


func static_typing():
	# Add a colon and a type to statically type it
	var attack: int = 5
	# Or have the interpreter interpret it (statically!)
	var speed := 1.6

	# Both cannot change type, uncommenting this throws errors
#	attack = "ale"
#	speed = "wawa a"


func exported_variables():
	# This might've been changed in the editor
	print("I have " + str(health) + " points of health")


func constants():
	# Constants cannot be changed; uncommenting this throws an error
#	SUFFERING = false
	pass
