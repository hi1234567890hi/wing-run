
extends Control

func _ready():
	if has_node("TimeLabel"):
		$TimeLabel.text = "Final Time: " + str(int(Global.final_time)) + "s"
		
func _on_PlayAgain_pressed():
	get_tree().change_scene_to_file("res://control.tscn")


func _on_play_again_pressed() -> void:
	get_tree().change_scene_to_file("res://control.tscn")
