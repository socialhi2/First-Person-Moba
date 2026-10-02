extends CharacterBody3D

# Variables to use
@export var movement_data: PlayerMovementData
@export var camera_data: PlayerCameraData
# @export lets you have control on the right panel
@export var camera : Camera3D



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
		movement_data.speed = movement_data.default_speed * movement_data.running_speed_multiplier
	else:
		movement_data.speed = movement_data.default_speed
	# Handle jump.
	if Input.is_action_pressed("Jump") and is_on_floor():
		velocity.y = movement_data.JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("Left", "Right", "Forward", "Backwards")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * movement_data.speed
		velocity.z = direction.z * movement_data.speed
	else:
		velocity.x = move_toward(velocity.x, 0, movement_data.speed)
		velocity.z = move_toward(velocity.z, 0, movement_data.speed)

	move_and_slide()

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		camera_data.rotation_y -= event.relative.x * (camera_data.mouse_sensitivity * camera_data.user_sensitivity) 
		camera_data.rotation_x -= event.relative.y * (camera_data.mouse_sensitivity * camera_data.user_sensitivity)
		
		camera_data.rotation_x = clamp(camera_data.rotation_x, -90, 90)
		
		rotation_degrees.y = camera_data.rotation_y
		camera.rotation_degrees.x = camera_data.rotation_x
