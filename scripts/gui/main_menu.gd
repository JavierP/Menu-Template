class_name MainMenu
extends Control

@onready var play := $MarginContainer/VBoxContainer/Play
@onready var options := $MarginContainer/VBoxContainer/Options
@onready var exit := $MarginContainer/VBoxContainer/Exit
@onready var margin_container := $MarginContainer
@onready var options_menu := $OptionsMenu


@onready var start_main := preload("res://scenes/main.tscn") 


func _on_play_pressed() -> void:
	print("Play Pressed")
	get_tree().change_scene_to_packed(start_main)

func _on_options_pressed() -> void:
	print("Options Pressed")
	margin_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true
	
func _on_exit_pressed() -> void:
	print("Exit Pressed")
	get_tree().quit(0)

func _on_exit_options_menu():
	margin_container.visible = true
	options_menu.visible = false
