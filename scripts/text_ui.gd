extends CanvasLayer

signal text_button_pressed()

@export var character : character_enum.CHARACTER
@export var dialogue_text : String

func _on_dialogue_button_pressed() -> void:
	print("button pressed")
	emit_signal("text_button_pressed")
	pass # Replace with function body.


func change_dialogue(character_name:String, dialogue:String):
	$TextUI/VBoxContainer/CharacterPanel/CharacterMarginContainer/CharacterRichTextLabel.text = character_name
	$TextUI/VBoxContainer/DialogueButton/DialogueMarginContainer/DialogueRichTextLabel.text = dialogue
	pass # Replace with function body.
