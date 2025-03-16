extends Node2D

const SPEED =30
var direction=1
@onready var ray_cas_droite = $RayCasDroite
@onready var ray_cas_gauche = $RayCasGauche
@onready var anim = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cas_droite.is_colliding():
		direction=-1
		anim.flip_h=1
	if ray_cas_gauche.is_colliding():
		direction=1
		anim.flip_h=0
		
	position.x += direction * SPEED * delta 
