extends Node
# God Relationship Singleton

signal person_received(Person)

enum Need {
	ZODIAC,
	TRADE,
	PURITY
}

static var RA = "Ra"
static var ORISIS = "Orisis"
static var SAVATHUN = "Savathun"

class God:
	var name:String
	var relationship:int
	var current_task:Task


class Task:
	var num_people:int
	var current_need:Need


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func receive_person(_god:Gods, person:Person):
	person_received.emit(person)
