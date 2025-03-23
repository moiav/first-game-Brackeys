extends Node2D
@onready var game_manager = %GameManager

@export var speed: float = 2.0  # Vitesse de déplacement (modifiable dans l'inspecteur)


func _process(delta):
	position.x += speed * delta  # Déplacement vers la droite


func _on_body_entered(body):
	game_manager.add_point()
	queue_free()
