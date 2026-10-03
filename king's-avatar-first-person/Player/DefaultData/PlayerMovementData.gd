extends Resource
class_name PlayerMovementData

@export var gravity := 1.5
@export var air_control := 5

@export var default_speed: float = 2.5
@export var speed: float = 0.0
@export var running_speed_multiplier: float = 2

@export var JUMP_VELOCITY: float = 5
@export var total_jumps: int = 3
@export var current_jumps: int = 0
