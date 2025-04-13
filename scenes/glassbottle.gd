extends Node2D
@export var speed: float = 10.0  # Vitesse de déplacement (modifiable dans l'inspecteur)


func _process(delta):
	position.x += speed * delta  # Déplacement vers la droite


func _on_body_entered(body):
	GameManager.add_bottle()
	self.queue_free()
