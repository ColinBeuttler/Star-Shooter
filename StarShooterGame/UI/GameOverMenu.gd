extends Control

onready var score_label = $Score


func _on_Retry_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_Back_pressed():
	get_tree().change_scene("res://UI/MainMenu.tscn")

func set_score(val):
	score_label.text = "Score: " + str(val)
