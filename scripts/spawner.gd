extends Node2D

@onready var bottle =preload("res://scenes/glassbottle.tscn")
@export var x: int = -155
@export var y: int = 50
var nb: int

func _ready():
	spawn()


func spawn():
	randomize()
	nb =randi_range(-15,0)
	print("Valeur du random :", nb) 
	var obj =bottle.instantiate()
	obj.position = Vector2(x+nb,y)
	add_child(obj)


func _on_timer_timeout():
	spawn()
