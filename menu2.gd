extends Node2D
signal area_entere
# Declare member variables here. Examples:
var a = 0
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if (a == 3):
		$Timer.start()
		$Animapem.play("votomsigue")
		a = a +1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.

		#$termo.position = get_global_mouse_position()
	
#	pass


func _on_Button_pressed():
	print("hola")
	$AnimationPlayer.play("varraojetos")
	pass # Replace with function body.


func _on_termo_mouse_entered():
	
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	print(a)
	var a=1
	pass # Replace with function body.


func _on_Button2_pressed():
	$termo2.play("termo")
	a = a + 1
	print(a)
	pass # Replace with function body.


func _on_votomcuadero_pressed():
	$amicuadermo.play("cuadermo")
	a = a + 1
	print(a)
	pass # Replace with function body.


func _on_votompem_pressed():
	$Animapem.play("pem")
	a = a + 1
	print(a)
	pass # Replace with function body.


func _on_siguiemte_ecema_pressed():
	get_tree().change_scene("res://ecema2.tscn")
	pass # Replace with function body.


func _on_Timer_timeout():
	print("hola")
	
	pass # Replace with function body.
