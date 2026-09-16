extends Node

@export var curr_script_dialogue : ScriptDialogue = null
var curr_dialogue_length : int = 0

func _ready() -> void:
	# change first time link
	change_text_sprite()
	pass
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Space"):
		_on_text_ui_text_button_pressed()	

func _on_text_ui_text_button_pressed() -> void:
	if (curr_dialogue_length <= curr_script_dialogue.dialogue_array.size()-1):
		# change the text on dialogue & character
		change_text_sprite()
	else:
		finished_curr_dialogue()

func change_text_sprite() -> void:
	$TextUI.change_dialogue(character_enum.enum_to_name(curr_script_dialogue.CHARACTER), curr_script_dialogue.dialogue_array[curr_dialogue_length])
	$Background.set_background(curr_script_dialogue.BACKGROUND)
	$Character.set_character(curr_script_dialogue.CHARACTER)
	curr_dialogue_length += 1
	
func finished_curr_dialogue():
	if(curr_script_dialogue.nextScript):
		curr_dialogue_length = 0 # reset where the dialogue is at
		var temp_dialogue = curr_script_dialogue.nextScript # weird temp_reference passes only
		curr_script_dialogue = temp_dialogue
		change_text_sprite()
	else:
		$TextUI.change_dialogue(character_enum.enum_to_name(curr_script_dialogue.CHARACTER), "End of Story for Now will be changed")
