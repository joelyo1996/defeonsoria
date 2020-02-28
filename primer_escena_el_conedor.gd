extends Node2D


var side = false
func _ready():
	if (global.entrada_comedor == 0):
		yield(get_tree().create_timer(2),"timeout")
		$AnimationPlayer.play("anim1")
		
	if (global.entrada_comedor == 1):
		$AnimationPlayer.play("anim5")
		
	pass
	
func dialogo():
	if global.contadordialogo == 1:
		$AnimationPlayer.play("anim2")
		
		pass
		
	if global.contadordialogo == 2:
		$AnimationPlayer.play("amin4")
		
		
		pass
		
	if global.contadordialogo == 3:
		
		$AnimationPlayer.play("anim7")
		pass
	if global.contadordialogo == 4:
		
		$AnimationPlayer.play("anim8")
		global.entrada_mapa = 1
		yield(get_tree().create_timer(4),"timeout")
		get_tree().change_scene("res://escenas/mapa.tscn")
	
		
		pass
func _on_Button_pressed():
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://escenas/pizarron1.tscn")
	pass
	
func _on_TextureButton_pressed():
	global.contadordialogo = global.contadordialogo + 1
	dialogo()
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "anim2":
		$AnimationPlayer.play("amin3")
		pass
		
	if anim_name == "amin4":
		$AnimationPlayer.play("bebe")
		$Button.disabled = false
		pass
		
		
	
		
	if anim_name == "anim8":
		$AnimationPlayer.play("anim9")
		$Button.disabled = false
		pass
	


func _on_sorvete1_mouse_entered():
	
	pass # Replace with function body.


func _on_sorvete1_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("click"):
		side = true
		print("hola")
	if Input.is_action_just_released("click"):
		side = false
	pass # Replace with function body.


func _on_libro_pressed():
	$AnimationPlayer.play("anim6")
	pass # Replace with function body.
