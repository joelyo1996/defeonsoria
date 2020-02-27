extends Node2D

var opcion
func _ready():
	pass


func _on_Button_pressed():
	$AnimationPlayer.play("opcion1")
	opcion = 1
	pass # Replace with function body.


func _on_boton_pressed():
	if (opcion ==1) :
		$AnimationPlayer.play("opcion1_salir")
	if (opcion ==2) :
		$AnimationPlayer.play("opcion2_salir")
	if (opcion ==3) :
		$AnimationPlayer.play("opcion3_salir")
	pass # Replace with function body.


func _on_Button2_pressed():
	$AnimationPlayer.play("opcion2")
	opcion = 2
	pass # Replace with function body.


func _on_Button3_pressed():
	$AnimationPlayer.play("opcion3")
	opcion = 3
	pass # Replace with function body.
