extends Node2D

func _ready():
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("Nueva animación")
	pass


func _on_TextureButton_pressed():
	$AnimationPlayer.play("play")
	
	pass # Replace with function body.
