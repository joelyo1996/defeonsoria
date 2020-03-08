extends Node2D

func _ready():
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("entrada1")
	pass


func _on_TextureButton_pressed():
	global.entradaspizzaron = 3
	get_tree().change_scene("res://escenas/pizarron1.tscn")
	pass # Replace with function body.
