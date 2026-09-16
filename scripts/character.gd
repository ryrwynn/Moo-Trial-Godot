extends Node2D

@export var curr_char : character_enum.CHARACTER = character_enum.CHARACTER.DA

var character_array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(character_enum.CHARACTER.size()):
		character_array.append(load("res://resources/character/" + character_enum.CHARACTER.keys()[i] + ".png"))
	set_character(curr_char)
	pass # Replace with function body.

	
func set_character(pchar) -> void:
	$CharacterSprite.texture = character_array[pchar]
