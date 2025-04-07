extends Node3D

@onready var pivot = $CameraPivot
@onready var camera = $CameraPivot/Camera3D

const mouseSensitivity : float = 0.001
var velocity : float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event: InputEvent):

	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		if event is InputEventMouseMotion:
			pivot.rotate_y(-event.relative.x * mouseSensitivity)
			camera.rotate_x(-event.relative.y * mouseSensitivity)

			#var lookSidewaysAngle = 30
			#var lookUpAngle = 30
			#var lookDownAngle = 30
			#
			#pivot.rotation.y = clamp(pivot.rotation.y, deg_to_rad(-lookSidewaysAngle), deg_to_rad(lookSidewaysAngle))
			#camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-lookDownAngle), deg_to_rad(lookUpAngle))

func _input(event: InputEvent):			
	if event.is_action_pressed("MoveForward"):
		
		pass
	if event.is_action_pressed("MoveBackwards"):
		pass
	if event.is_action_pressed("MoveLeft"):
		pass
	if event.is_action_pressed("MoveRight"):
		pass
