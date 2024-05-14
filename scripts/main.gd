extends Node


@onready var label = $Label


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "Hello, world!"
	label.modulate = Color.HOT_PINK


func _input(event):
	if event.is_action_pressed("my_action"):
		label.modulate = Color(randf(), randf(), randf())

	if event.is_action_released("my_action"):
		label.modulate = Color.HOT_PINK
