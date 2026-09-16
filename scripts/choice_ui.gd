extends Control

# change PanelContainer Layout > Transform > Container Sizing > Vertical = Shrink Center, Expand

const choice_button : PackedScene = preload("res://scenes/choice_button_container.tscn") # choice button Scene

func add_choices(choices : Array[Choice]):
	for choice in choices:
		var temp_button = choice_button.instantiate() as PanelContainer
		temp_button.size_flags_vertical = Control.SIZE_SHRINK_CENTER
		temp_button.size_flags_vertical = Control.SIZE_EXPAND
		temp_button.set_text(choice.choice_text)
		$VBoxContainer.add_child(temp_button)
