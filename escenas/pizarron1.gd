extends Node2D
var cont = 0
var opc1 = false
var opc2 = false
var opc3 = false
var opcion
func _ready():
	pass

	
		

func _on_Button_pressed():
	$AnimationPlayer.play("opcion1")
	opcion = 1
	opc1 = true
	pass # Replace with function body.


func _on_boton_pressed():
	if (opcion ==1) :
		$AnimationPlayer.play("opcion1_salir")
	if (opcion ==2) :
		$AnimationPlayer.play("opcion2_salir")
	if (opcion ==3) :
		$AnimationPlayer.play("opcion3_salir")
	if (opc1 == true && opc2 == true && opc3 == true ):
		yield(get_tree().create_timer(4),"timeout")
		global.entrada_comedor = global.entrada_comedor + 1
		get_tree().change_scene("res://primer_escena_el_conedor.tscn")
	pass # Replace with function body.


func _on_Button2_pressed():
	opc2 = true
	$AnimationPlayer.play("opcion2")
	opcion = 2
	cont = cont +1
	pass # Replace with function body.


func _on_Button3_pressed():
	opc3 = true
	$AnimationPlayer.play("opcion3")
	opcion = 3
	cont = cont +1
	pass # Replace with function body.