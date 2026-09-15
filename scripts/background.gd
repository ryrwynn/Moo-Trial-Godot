extends Node2D

@export var curr_background : background_enum.BACKGROUND = background_enum.BACKGROUND.Opening
var prev_background : background_enum.BACKGROUND

var background_array = []
var foreground_array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# set prev as curr
	prev_background = curr_background
	# calls all the background resources
	for i in range(background_enum.BACKGROUND.size()):
		background_array.append(load("res://resources/background/" + background_enum.BACKGROUND.keys()[i] + "Background.png"))	
		foreground_array.append(load("res://resources/background/" + background_enum.BACKGROUND.keys()[i] + "Foreground.png"))
	# set initial background
	set_background(curr_background)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if prev_background != curr_background:
		set_background(curr_background)
	pass

func set_background(bckg_enum) -> void:
	$Background.texture = background_array[bckg_enum]
	$Foreground.texture = foreground_array[bckg_enum]
	
