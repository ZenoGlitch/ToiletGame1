extends Node

var gameFocused : bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	gameFocused = true
	
func _input(event: InputEvent) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		gameFocused = false
	if Input.is_action_just_pressed("InteractPrimary") and not gameFocused:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
