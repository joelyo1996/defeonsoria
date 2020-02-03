extends Node2D

var contadordialogo = 0
var side = false
func _ready():
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("anim1")
	pass
	
func _process(delta):	
	if contadordialogo == 1:
		$AnimationPlayer.play("anim2")
		contadordialogo = 2
		pass
		
	if contadordialogo == 3:
		contadordialogo = 4
		$AnimationPlayer.play("amin4")
		pass
		
	if contadordialogo == 5:
		contadordialogo = 6
		$AnimationPlayer.play("anim6")
		pass
	if contadordialogo == 7:
		contadordialogo = 8
		$AnimationPlayer.play("anim8")
		pass
func _on_Button_pressed():
	$AnimationPlayer.play("bebe")
	pass
	
func _on_TextureButton_pressed():
	contadordialogo = contadordialogo + 1
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "anim2":
		$AnimationPlayer.play("amin3")
		pass
		
	if anim_name == "amin4":
		$AnimationPlayer.play("anim5")
		pass
		
	if anim_name == "anim6":
		$AnimationPlayer.play("anim7")
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
