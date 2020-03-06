extends Node2D
export (PackedScene) var npc
var cont = "10"
var con = 10
var randon = 0
var randon1 = 0
var randon2 = 0
var randon3 = 0
var randon4 = 0
var randon5 = 0
var randon6 = 0
var randon7 = 0
var randon8 = 0
var randon9 = 0
var tiempo = 0
var boton = 0
func _ready():
	
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("Nueva animación")

	pass

func _physics_process(delta):
	get_tree().get_nodes_in_group("tiempo")[0].text = String(tiempo)
	global.randon_position = round(rand_range(1,7))
	randon = round(rand_range(5,10))
	randon1 = round(rand_range(10,15))
	randon2 = round(rand_range(7,10))
	randon3 = round(rand_range(1,10))
	randon4 = round(rand_range(1,10))
	randon5 = round(rand_range(1,10))
	randon6 = round(rand_range(1,10))
	randon7 = round(rand_range(1,10))
	randon8 = round(rand_range(1,10))
	randon9 = round(rand_range(1,10))
	$Position2D/Timer.wait_time = randon
	$Position1/Timer.wait_time = randon1
	$Position2/Timer.wait_time = randon2
	$Position3/Timer.wait_time = randon3
	$Position4/Timer.wait_time = randon4
	$Position5/Timer.wait_time = randon5
	$Position6/Timer.wait_time = randon6
	$Position7/Timer.wait_time = randon7
	$Position8/Timer.wait_time = randon8
	$Position9/Timer.wait_time = randon9
	$Label.text = String(con)
	if (con == 0):
		global.con = con
		$Position1/Timer.stop()
		$Position2D/Timer.stop()
		$Position2/Timer.stop()
		$Position3/Timer.stop()
		$Position4/Timer.stop()
		$Position5/Timer.stop()
		$Position6/Timer.stop()
		$Position7/Timer.stop()
		$Position8/Timer.stop()
		$Position9/Timer.stop()
		$crono/Timer.stop()
		$AnimationPlayer.play("stop")
		yield(get_tree().create_timer(2),"timeout")
		con = -1
		boton = 1
		
func _on_TextureButton_pressed():
	if boton == 0 :
		$AnimationPlayer.play("play")
		yield(get_tree().create_timer(2),"timeout")
		$Position1/Timer.start()
		$Position2D/Timer.start()
		$Position2/Timer.start()
		$Position3/Timer.start()
		$Position4/Timer.start()
		$Position5/Timer.start()
		$Position6/Timer.start()
		$Position7/Timer.start()
		$Position8/Timer.start()
		$Position9/Timer.start()
		$crono/Timer.start()
		yield(get_tree().create_timer(2),"timeout")
		
	if boton == 1 :
		$AnimationPlayer.play("salir")
		yield(get_tree().create_timer(2),"timeout")
		global.entradasFerreteria = 1
		get_tree().change_scene("res://escenas/ferreteria.tscn")
	pass # Replace with function body.



	
	


func _on_Timer_timeout():
	
	tiempo = tiempo + 1
	pass # Replace with function body.


func _on_AreapocicionarTornillo_area_entered(area):
	if area.name == "areaTornilloAbajo":
		con = con - 1
	pass # Replace with function body.


func _on_caja_area_entered(area):
	if area.name == "abajo":
		con = con - 1
	pass # Replace with function body.
