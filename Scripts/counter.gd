extends Node3D

var isInteractable = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_interact_area_3d_body_entered(body):
	if body.name == "PlayerCharacterBody3D":
		isInteractable = true
		SignalManager.counterIsInteractable.emit()

func _on_interact_area_3d_body_exited(body):
	if body.name == "PlayerCharacterBody3D":
		isInteractable = false
