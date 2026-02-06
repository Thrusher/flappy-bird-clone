extends CharacterBody2D


const GRAVITY := 500.0
const JUMP_VELOCITY := -500.0
const MAX_FALL_SPEED := 500

func _physics_process(delta: float) -> void:
	#velocity.y += GRAVITY * delta
	
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
	else:
		velocity.y += GRAVITY * delta

		
	if velocity.y > MAX_FALL_SPEED:
		velocity.y = MAX_FALL_SPEED
		
	move_and_slide()
