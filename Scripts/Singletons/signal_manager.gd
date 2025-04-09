extends Node

signal counterIsInteractable
signal pauseMenuIsOpen
signal pauseMenuWasClosed

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("counterIsInteractable", onCounterInteractable)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func onCounterInteractable():
	print("standing next to counter") 
	pass
