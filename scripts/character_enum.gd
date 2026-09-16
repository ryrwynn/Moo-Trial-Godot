extends Node

class_name character_enum

# must keep name of Character File the same as Character Name
enum CHARACTER {
	DA,
	IndigoQuade,
	NelDoos,
	Pros,
	RileyKaye,
	TeranRivera
}

static func enum_to_name(character : CHARACTER) -> String:
	var string_name:String
	match character:
		CHARACTER.DA:
			string_name = "Defense Attourney"
		CHARACTER.IndigoQuade:
			string_name = "Indigo Quades"
		CHARACTER.NelDoos:
			string_name = "Nel Doos"
		CHARACTER.Pros:
			string_name = "Prosecueter"
		CHARACTER.RileyKaye:
			string_name = "Riley Kaye"
		CHARACTER.TeranRivera:
			string_name = "Teran Rivera"
	return string_name
