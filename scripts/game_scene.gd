extends Node

signal change_dialogue_UI(character:character_enum.CHARACTER, background:background_enum.BACKGROUND, dialogue:String)

@export var curr_script_dialogue : ScriptDialogue = null
var curr_dialogue_length : int = 0

func _ready() -> void:
	pass

func _on_text_ui_text_button_pressed() -> void:
	if (curr_dialogue_length < curr_script_dialogue.dialogue_array.size()):
		curr_dialogue_length += 1
		emit_signal("change_dialogue_UI",curr_script_dialogue.CHARACTER, curr_script_dialogue.BACKGROUND, curr_script_dialogue.dialogue_array[curr_dialogue_length])
	else:
		finished_curr_dialogue()

	pass # Replace with function body.
	
func finished_curr_dialogue():
	curr_script_dialogue = curr_script_dialogue.nextScript
