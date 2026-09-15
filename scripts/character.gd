extends Node2D

@export var curr_char : character_enum.CHARACTER = character_enum.CHARACTER.DA
var prev_char : character_enum.CHARACTER

var character_array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	prev_char = curr_char
	for i in range(character_enum.CHARACTER.size()):
		character_array.append(load("res://resources/character/" + character_enum.CHARACTER.keys()[i] + ".png"))
	set_character(curr_char)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if prev_char != curr_char:
		set_character(curr_char)
	pass
	
func set_character(_curr_char) -> void:
	$CharacterSprite.texture = character_array[curr_char]
