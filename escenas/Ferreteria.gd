extends Node2D

func _ready():
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("texto1")
	pass


func _on_TextureButton_pressed():
	$AnimationPlayer.play("salirEscena")
	yield(get_tree().create_timer(3),"timeout")
	get_tree().change_scene("res://escenas/Deposito.tscn")
	pass # Replace with function body.
