extends Node

@export var curr_script_dialogue : IScript = null
var curr_dialogue_length : int = 0

## will change the sprites to initial scene
func _ready() -> void:
	# change first time link
	change_text_sprite()
	pass

## checks input functions
func _process(_delta: float) -> void:
	#if Input.is_action_just_pressed("Space"):
		#_on_text_ui_text_button_pressed()
	pass

## when the text buttons if pressed will check for next dialogue in ScriptDialogue or check next scene
func _on_text_ui_text_button_pressed() -> void:
	if (curr_dialogue_length <= curr_script_dialogue.dialogue_array.size()-1):
		# change the text on dialogue & character
		change_text_sprite()
	else:
		finished_scene_script()

## callable function to change the rendering components
func change_text_sprite() -> void:
	$DialogueUI/TextUI.change_dialogue(character_enum.enum_to_name(curr_script_dialogue.CHARACTER), curr_script_dialogue.dialogue_array[curr_dialogue_length])
	$Background.set_background(curr_script_dialogue.BACKGROUND)
	$Character.set_character(curr_script_dialogue.CHARACTER)
	curr_dialogue_length += 1
	
## run after each IScript is finished to find out which IScript Function to run next
func finished_scene_script():
	if(!curr_script_dialogue.next_script):
		$DialogueUI/TextUI.change_dialogue(character_enum.enum_to_name(curr_script_dialogue.CHARACTER), "End of Story for Now will be changed")
	else:
		# change the curr_script_dialogue to next
		var temp_dialogue = curr_script_dialogue.next_script # weird temp_reference passes only
		curr_script_dialogue = temp_dialogue
		match curr_script_dialogue.get_class_name_as_string():
			"ScriptDialogue":
				finished_curr_dialogue()
			"ScriptChoice":
				start_choice_script()

## run to reset the ScriptDialogue issues and render from initial scene
func finished_curr_dialogue():
	curr_dialogue_length = 0 # reset where the dialogue is at
	change_text_sprite()

## creates the choices menu
func start_choice_script():
	$DialogueUI/ChoiceUI.add_choices(curr_script_dialogue.choice_array)
	pass
	
	
