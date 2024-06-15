extends Node

@export var time : Label

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if event.relative.x > 1 or event.relative.x < -1 or event.relative.y > 1 or event.relative.y < -1:
			get_tree().quit()
	
	#if event is InputEvent:
	#	get_tree().quit()

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	time.text = Time.get_time_string_from_system()
	if Input.is_anything_pressed():
		get_tree().quit()
