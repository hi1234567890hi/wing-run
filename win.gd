extends Area2D
func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		Global.final_time = Global.time_left
		get_tree().change_scene_to_file("res://WinScreen.tscn")
