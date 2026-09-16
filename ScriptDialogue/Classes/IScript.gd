class_name IScript
extends Resource
## Interface Class for all custom ScriptScene Resources

## Editorable character_enum.CHARACTER to be rendered
@export var CHARACTER : character_enum.CHARACTER
## Editorable background_enum.BACKGROUND to be rendered
@export var BACKGROUND : background_enum.BACKGROUND
## Editorable, links to any child class of IScript
@export var next_script : IScript

func get_class_name_as_string() -> String:
	return "IScript"
