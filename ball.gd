extends CharacterBody2D

const GRAVITY = 1700
const SPEED = 200
const SLAM = 2000

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += delta * GRAVITY
	
	var motion = velocity * delta
	move_and_collide(motion)
	
	if Input.is_action_pressed("left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("right"):
		velocity.x = SPEED	
	else:
		velocity.x = 0
	
	
	if Input.is_action_just_pressed("slam"):
		if not is_on_floor():
			velocity.y = SLAM
			Global.SLAMMING = true
	if is_on_floor():
		Global.SLAMMING = false
		
		
	if is_on_floor():
		velocity.y = Global.JUMP
	
	if Input.is_action_pressed("quick_restart"):
		Global.time_left=60.0
		get_tree().reload_current_scene()
		

	move_and_slide()
