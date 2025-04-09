extends Node

enum GameState {NOT_STARTED, RUNNING, PAUSED}
var game_state : GameState

# Called when the node enters the scene tree for the first time.
func _ready():
	game_state == GameState.NOT_STARTED
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
