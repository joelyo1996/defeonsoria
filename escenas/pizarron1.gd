extends Node2D
var cont = 0
var opc1 = false
var opc2 = false
var opc3 = false
var opcion
func _ready():
	global.entradaspizzaron = 3
	if global.entradaspizzaron == 0:
		$AnimationPlayer.play("entrada1")
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("entrada2")
	if global.entradaspizzaron == 3:
		$AnimationPlayer.play("entrada3")
	pass

	
		

func _on_Button_pressed():
	if global.entradaspizzaron == 0:
		$AnimationPlayer.play("opcion1")
		opcion = 1
		opc1 = true
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("opcion4")
		opcion = 4
		opc1 = true
	
		
	pass # Replace with function body.


func _on_boton_pressed():
	if (opcion ==1) :
		$AnimationPlayer.play("opcion1_salir")
	if (opcion ==2) :
		$AnimationPlayer.play("opcion2_salir")
	if (opcion ==3) :
		$AnimationPlayer.play("opcion3_salir")
	if (opcion ==4) :
		$AnimationPlayer.play("opcion4Salir")
	if (opcion ==5) :
		$AnimationPlayer.play("opcion5_salir")
	if (opcion ==6) :
		$AnimationPlayer.play("opcion6_salir")
	if global.entradaspizzaron == 0:
		if (opc1 == true && opc2 == true && opc3 == true ):
			yield(get_tree().create_timer(4),"timeout")
			global.entrada_comedor = global.entrada_comedor + 1
			get_tree().change_scene("res://primer_escena_el_conedor.tscn")
	if global.entradaspizzaron == 1:
		if (opc1 == true && opc2 == true && opc3 == true ):
			yield(get_tree().create_timer(4),"timeout")
			global.entradaspizzaron = 2
			get_tree().change_scene("res://escenas/Ferreteria.tscn")
		
	pass # Replace with function body.


func _on_Button2_pressed():
	if global.entradaspizzaron == 0:
		opc2 = true
		$AnimationPlayer.play("opcion2")
		opcion = 2
		cont = cont +1
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("opcion5")
		opcion = 5
		opc2 = true
	pass # Replace with function body.


func _on_Button3_pressed():
	if global.entradaspizzaron == 0:
		opc3 = true
		$AnimationPlayer.play("opcion3")
		opcion = 3
		cont = cont +1
	if global.entradaspizzaron == 1:
		$AnimationPlayer.play("opcion6")
		opcion = 6
		opc3 = true
	pass # Replace with function body.
