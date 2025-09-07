extends Camera2D

func _physics_process(delta:float) -> void:
	position=position.lerp($"../CharacterBody2D".position, delta *3.5)
