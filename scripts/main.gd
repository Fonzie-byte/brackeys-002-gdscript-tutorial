extends Node


@onready var label = $Label

var health = 20


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = str(health) + "\nsina pona"
	label.modulate = Color.HOT_PINK


# Called when there is an input event.
func _input(event):
	# On key-down, dance the colours around.
	if event.is_action_pressed("my_action"):
		label.modulate = Color(randf(), randf(), randf())

	# If alive, on key-up slip closer to death
	if health > 0 and event.is_action_released("my_action"):
		health -= 5
		label.text = str(health)
		
		if health == 0:
			label.text += "\nsina moli"
		elif health <= 10:
			label.text += "\nsina pakala"
		else:
			label.text += "\n sina pona"
			
