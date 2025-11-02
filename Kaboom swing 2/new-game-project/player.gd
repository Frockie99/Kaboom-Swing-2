extends CharacterBody2D

const SPEED = 300.0
@export var explotionUpwardVelocity = -400.0


#the states the player can be in 
enum playerStates	{
Standard, # player can do all actions
dead, # player is dead
NoControll  # player cant move, use for level finish and stuff
}
var playerState # the players current state

func explode()	:
	pass
	
func distanceToGround()	:
	var space_state = get_world_2d().direct_space_state
	var query = PhysicsRayQueryParameters2D.create(Vector2(0, 0), Vector2(50, 100))

func _init() -> void:
	playerState = playerStates.Standard


func _physics_process(delta: float) -> void:

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and playerState == playerStates.Standard :
		explode()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
