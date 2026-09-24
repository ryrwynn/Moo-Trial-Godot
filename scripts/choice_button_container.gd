extends PanelContainer

@export var choice_text : String

func _ready() -> void:
	$ChoiceButton/MarginContainer/RichTextLabel.text = choice_text

func set_text(text:String) -> void:
	$ChoiceButton/MarginContainer/RichTextLabel.text = text
