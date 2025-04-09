extends CanvasGroup


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	SignalManager.pauseMenuIsOpen.connect(onPauseMenuOpen)
	SignalManager.pauseMenuWasClosed.connect(onPauseMenuClosed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func onPauseMenuOpen():
	self.visible = true

func onPauseMenuClosed():
	self.visible = false

func _on_close_pause_menu_button_button_down():
	GlobalResources.game_state = GlobalResources.GameState.RUNNING
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	self.visible = false
