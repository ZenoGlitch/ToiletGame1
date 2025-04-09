extends Node

var gameFocused : bool = false
var pauseMenuOpen : bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	#gameFocused = true
	pass
	
func _input(event: InputEvent) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		#if GlobalResources.game_state == GlobalResources.GameState.RUNNING:
			#Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			#GlobalResources.game_state = GlobalResources.GameState.PAUSED
			#SignalManager.pauseMenuIsOpen.emit()
			#
		#elif GlobalResources.game_state == GlobalResources.GameState.PAUSED:
			#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
		match GlobalResources.game_state:
			GlobalResources.GameState.NOT_STARTED:
				return
			GlobalResources.GameState.RUNNING:
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				GlobalResources.game_state = GlobalResources.GameState.PAUSED
				SignalManager.pauseMenuIsOpen.emit()
				pass
			GlobalResources.GameState.PAUSED:
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
				GlobalResources.game_state = GlobalResources.GameState.RUNNING
				SignalManager.pauseMenuWasClosed.emit()
				pass
				
				
		#gameFocused = false
		
	#if Input.is_action_just_pressed("InteractPrimary") and not pauseMenuOpen:
		#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
