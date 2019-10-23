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
	get_tree().change_scene("res://menu2.tscn")
	pass # Replace with function body.


func _on_Button3_pressed():
	$AudioStreamPlayer.stop()
	pass # Replace with function body.


func _on_Button4_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Button2_pressed():
	$AnimationPlayer.play("creditos")
	pass # Replace with function body.


func _on_atras_pressed():
	$atras2.play("atras")
	pass # Replace with function body.
