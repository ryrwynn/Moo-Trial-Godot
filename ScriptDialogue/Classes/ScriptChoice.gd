class_name ScriptChoice
extends IScript

@export var choice_array:Array[Choice] = []

func set_next_script(chosen:Choice):
	next_script = chosen.next_script


func get_class_name_as_string() -> String:
	return "ScriptChoice"
