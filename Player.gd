extends KinematicBody2D

export var speed = 200
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var invec = Vector2()
	invec.x += Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	invec.y += Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	invec = invec.normalized() * speed
	velocity = lerp(velocity, invec, 0.5)
	velocity = move_and_slide(velocity)
	
