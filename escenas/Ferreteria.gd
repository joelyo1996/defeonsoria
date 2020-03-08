extends Node2D

func _ready():
	
	if global.entradasFerreteria == 0 :
		yield(get_tree().create_timer(2),"timeout")
		$AnimationPlayer.play("texto1")
	if global.entradasFerreteria == 1 :
		yield(get_tree().create_timer(2),"timeout")
		$AnimationPlayer.play("texto2")
	if global.entradasFerreteria == 2 :
		$AnimationPlayer.play("texto3")
	
		
func _on_TextureButton_pressed():
	if global.entradasFerreteria == 0 :
		$AnimationPlayer.play("salirEscena")
		yield(get_tree().create_timer(3),"timeout")
		get_tree().change_scene("res://escenas/Deposito.tscn")
	if global.entradasFerreteria == 1 :
		$AnimationPlayer.play("salirEscena")
		yield(get_tree().create_timer(3),"timeout")
		global.entradaspizzaron = 1
		get_tree().change_scene("res://escenas/pizarron1.tscn")
	if global.entradasFerreteria == 2 :
		$AnimationPlayer.play("salirEscena")
		yield(get_tree().create_timer(3),"timeout")
		global.entrada_mapa = 7
		get_tree().change_scene("res://escenas/mapa.tscn")

func _on_Sprite_Cuaderno_pressed():
	if global.entradasFerreteria == 2 :
		$AnimationPlayer.play("cuaderno2")
	pass # Replace with function body.
