extends CanvasGroup


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_start_game_button_button_down():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	GlobalResources.game_state = GlobalResources.GameState.RUNNING
	self.visible = false
