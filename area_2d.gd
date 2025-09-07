extends Area2D

func _ready():
	connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body: Node2D):
	if body.is_in_group("player"):
		get_tree().call_deferred("reload_current_scene")


		
		
