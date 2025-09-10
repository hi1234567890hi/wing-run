extends StaticBody2D

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if Global.SLAMMING == true:
		$"Brick(1)".visible = false
		$CollisionShape2D.set_deferred("disabled", true)
		if Input.is_action_pressed("quick_restart"):
			Global.SLAMMING = false
			
