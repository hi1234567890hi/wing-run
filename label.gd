extends Label

var flash_timer: float = 0.0
var flashing: bool = false

func _ready() -> void:
	text = str(int(ceil(Global.time_left)))
	set_process(true)

func _process(delta: float) -> void:
	if Global.time_left > 0:
		Global.time_left -= delta
		text = str(int(ceil(Global.time_left)))
		
	if Global.time_left <= 30:
		add_theme_color_override("font_color", Color.YELLOW)
		
		
	if Global.time_left <= 1:
		text = "Wing Store CLOSED"
	
	if Global.time_left <= 0:
		get_tree().reload_current_scene()
		
	if Global.time_left <= 10:
		flash_timer += delta
	if flash_timer >= 0.5:  
		flashing = !flashing
		flash_timer = 0.0
	if flashing:
		add_theme_color_override("font_color", Color.RED)
