extends Node2D
export (PackedScene) var npc
var cont = "10"
var con = 10
var randon = 0
var randon1 = 0
var randon2 = 0
var randon3 = 0
var randon4 = 0
var tiempo = 0
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
	$Position2D/Timer.wait_time = randon
	$Position1/Timer.wait_time = randon1
	$Position2/Timer.wait_time = randon2
	$Position3/Timer.wait_time = randon3
	$Position4/Timer.wait_time = randon4
	$Label.text = String(con)
	if (con == 0):
		
		$Position1/Timer.stop()
		$Position2D/Timer.stop()
		$Position2/Timer.stop()
		$Position3/Timer.stop()
		$Position4/Timer.stop()
		$crono/Timer.stop()
		$AnimationPlayer.play("stop")

func _on_TextureButton_pressed():
	$AnimationPlayer.play("play")
	yield(get_tree().create_timer(2),"timeout")
	$Position1/Timer.start()
	$Position2D/Timer.start()
	$Position2/Timer.start()
	$Position3/Timer.start()
	$Position4/Timer.start()
	$TextureButton.queue_free()
	$crono/Timer.start()
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	con = con - 1
	
	pass # Replace with function body.


func _on_Timer_timeout():
	
	tiempo = tiempo + 1
	pass # Replace with function body.
