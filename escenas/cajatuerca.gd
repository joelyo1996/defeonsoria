extends RigidBody2D


func _ready():
	pass

func _on_arriba_area_entered(area):
	if area.name == "abajo":
		queue_free()
	pass # Replace with function body.


func _on_abajo_area_entered(area):
	if area.name == "arriba":
		queue_free()
	pass # Replace with function body.
