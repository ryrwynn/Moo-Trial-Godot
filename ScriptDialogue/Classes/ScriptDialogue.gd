class_name ScriptDialogue
extends Resource

@export var CHARACTER : character_enum.CHARACTER
@export var BACKGROUND : background_enum.BACKGROUND
@export var dialogue_array : Array[String] = []
@export var nextScript : ScriptDialogue
