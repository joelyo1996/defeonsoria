extends Node2D
signal area_entere
# Declare member variables here. Examples:
var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
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
	print("hola")
	var a=1
	pass # Replace with function body.


func _on_Button2_pressed():
	$termo2.play("termo")
	pass # Replace with function body.


func _on_votomcuadero_pressed():
	$amicuadermo.play("cuadermo")
	pass # Replace with function body.


func _on_votompem_pressed():
	$Animapem.play("pem")
	pass # Replace with function body.
