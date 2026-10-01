extends CharacterBody3D


const default_speed = 5.0
const JUMP_VELOCITY = 3

# Variables to use
# @export lets you have control on the right panel
@export var camera : Camera3D
# This is user defined sensitivity
@export var user_sensitivity = 0
# Mouse sensitivity is low to have finer control over user mouse rotation
var mouse_sensitivity = 0.10
var rotation_x := 0 
var rotation_y := 0

# Player
var speed


# Starts upon script running
func _ready() -> void:
	# Confines the mouse to the window size
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	# Handle running
	if Input.is_action_pressed("Run") and is_on_floor():
		speed = default_speed * 2
	else:
		speed = default_speed
	# Handle jump.
	if Input.is_action_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("Left", "Right", "Forward", "Backwards")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)

	move_and_slide()

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation_y -= event.relative.x * (mouse_sensitivity * user_sensitivity) 
		rotation_x -= event.relative.y * (mouse_sensitivity * user_sensitivity)
		
		rotation_x = clamp(rotation_x, -90, 90)
		
		rotation_degrees.y = rotation_y
		camera.rotation_degrees.x = rotation_x
