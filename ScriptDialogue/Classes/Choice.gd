class_name Choice
extends Resource

@export var choice_text:String
@export var reputation:int
@export var next_script:IScript

func _init(choice:String = "", rep:int = 0):
	choice_text = choice
	reputation = rep
