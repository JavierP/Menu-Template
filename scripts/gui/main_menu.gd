extends Control

func _on_play_pressed():
	print("Play Pressed")
	get_tree().call(&"change_scene_to_packed", preload("res://scenes/main.tscn"))

func _on_options_pressed():
	print("Options Pressed")
	
func _on_exit_pressed():
	get_tree().quit(0)

