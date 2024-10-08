extends Control

@onready var book: Control = $MarginContainer

@onready var tab_container: TabContainer = $Book/MarginContainer/TabContainer

var mouse_inside_book:bool


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	book.position.y = get_viewport_rect().size.y
	book.show()


func _on_show_book_button_down() -> void:
	var new_tween = create_tween()
	#book.show()
	new_tween.tween_property(book, "position", Vector2(book.position.x,0), 0.2).set_trans(Tween.TRANS_SINE)


func _on_close_button_down() -> void:
	var new_tween = create_tween()
	new_tween.tween_property(book, "position", Vector2(book.position.x,get_viewport_rect().size.y), 0.2).set_trans(Tween.TRANS_SINE)
	await new_tween.finished


func _on_gods_god_selected(string: Variant) -> void:
	_on_close_button_down()
