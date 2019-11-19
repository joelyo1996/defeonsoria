extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$Animatiomico.play("mico")
	pass # Replace with function body.


func _on_termo_pressed():
	$Animatiomico.play("termo")
	pass # Replace with function body.


func _on_micro_pressed():
	$Animatiomico.play("micro")
	pass # Replace with function body.
