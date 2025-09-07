extends Label

var time_left: float = 60.0
var flash_timer: float = 0.0
var flashing: bool = false

func _ready() -> void:
	text = str(int(ceil(time_left)))
	set_process(true)

func _process(delta: float) -> void:
	if time_left > 0:
		time_left -= delta
		text = str(int(ceil(time_left)))
		
	if time_left <= 30:
		add_theme_color_override("font_color", Color.YELLOW)
		
		
	if time_left <= 1:
		text = "Wing Store CLOSED"
	
	if time_left <= 0:
		get_tree().reload_current_scene()
		
	if time_left <= 10:
		flash_timer += delta
	if flash_timer >= 0.5:  
		flashing = !flashing
		flash_timer = 0.0
	if flashing:
		add_theme_color_override("font_color", Color.RED)
