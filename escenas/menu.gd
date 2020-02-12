extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	yield(get_tree().create_timer(1),"timeout")
	$AnimationPlayer.play("precentacion")
	yield(get_tree().create_timer(4),"timeout")
	$AnimationPlayer.play("animacion_sc")
	yield(get_tree().create_timer(3),"timeout")
	$ColorRect.queue_free()

	pass 


func _process(delta):
	$fondo/sol.rotation =+ 5



func _on_play_pressed():
	yield(get_tree().create_timer(3),"timeout")
	get_tree().change_scene("res://escenas/mapa.tscn")
	


func _on_salir_pressed():
	yield(get_tree().create_timer(1),"timeout")
	$AnimationPlayer.play("salir")
	yield(get_tree().create_timer(3),"timeout")
	get_tree().quit()
	pass # Replace with function body.


func _on_info_pressed():
	yield(get_tree().create_timer(1),"timeout")
	$AnimationPlayer.play("credito")
	pass # Replace with function body.


func _on_Button_pressed():
	$AnimationPlayer.play("salir_creditos")
	pass # Replace with function body.
