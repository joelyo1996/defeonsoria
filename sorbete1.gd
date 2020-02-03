extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mauseIn = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (mauseIn == true && Input.is_action_pressed("click")):
		set_position(get_viewport().get_mouse_position())
		

	pass
func _on_Area2D_mouse_entered():
	mauseIn = true
	

func _on_Area2D_mouse_exited():
	mauseIn = false
