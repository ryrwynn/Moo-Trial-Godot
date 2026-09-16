extends CanvasLayer

signal text_button_pressed()

@export var character : character_enum.CHARACTER
@export var dialogue_text : String

func _on_dialogue_button_pressed() -> void:
	emit_signal("text_button_pressed")
	pass # Replace with function body.


func _on_game_scene_change_dialogue_ui(character: character_enum.CHARACTER, background: background_enum.BACKGROUND, dialogue: String) -> void:
	$TextUI/VBoxContainer/DialoguePanelContainer/DialogueMarginContainer/DialogueRichTextLabel.text = dialogue
	$TextUI/VBoxContainer/CharacterPanel/CharacterMarginContainer/CharacterRichTextLabel.text = character_enum.enum_to_name(character)
	pass # Replace with function body.
