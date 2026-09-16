extends Node

@export var curr_script_dialogue : ScriptDialogue = null
var curr_dialogue_length : int = 0

func _ready() -> void:
	pass

func _on_text_ui_text_button_pressed() -> void:
	print("button pressed signal passed to game_scene")
	if (curr_dialogue_length < curr_script_dialogue.dialogue_array.size()-1):
		curr_dialogue_length += 1
		# change the text on dialogue & character
		$TextUI.change_dialogue(character_enum.enum_to_name(curr_script_dialogue.CHARACTER), curr_script_dialogue.dialogue_array[curr_dialogue_length])
	else:
		finished_curr_dialogue()

	pass # Replace with function body.
	
func finished_curr_dialogue():
	curr_dialogue_length = 0 # reset where the dialogue is at
	var temp_dialogue = curr_script_dialogue.nextScript # weird temp_reference passes only
	curr_script_dialogue = temp_dialogue
