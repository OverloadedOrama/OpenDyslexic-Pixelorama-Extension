extends Node

const OPEN_DYSLEXIC_3_REGULAR := preload("res://assets/fonts/OpenDyslexic3-Regular.ttf")
var theme: Theme
var previous_font: Font


func _enter_tree() -> void:
	if ExtensionsApi.get_api_version() < 5:
		theme = ExtensionsApi.theme.get_theme()
		previous_font = theme.default_font
		theme.default_font = OPEN_DYSLEXIC_3_REGULAR
	else:
		ExtensionsApi.theme.add_font(OPEN_DYSLEXIC_3_REGULAR)
		ExtensionsApi.theme.set_font(OPEN_DYSLEXIC_3_REGULAR)


func _exit_tree() -> void:
	if ExtensionsApi.get_api_version() < 5:
		theme.default_font = previous_font
	else:
		ExtensionsApi.theme.remove_font(OPEN_DYSLEXIC_3_REGULAR)
