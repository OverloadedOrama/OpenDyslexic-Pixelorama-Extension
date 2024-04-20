extends Node

const OPEN_DYSLEXIC_3_REGULAR := preload("res://assets/fonts/OpenDyslexic3-Regular.ttf")
var theme: Theme
var previous_font: Font


func _enter_tree() -> void:
	theme = ExtensionsApi.theme.get_theme()
	previous_font = theme.default_font
	theme.default_font = OPEN_DYSLEXIC_3_REGULAR


func _exit_tree() -> void:
	theme.default_font = previous_font
