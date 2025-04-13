extends Node2D
@onready var game_manager = %GameManager
@export var scene_to_instanciate: PackedScene
@export var x: int = 200
@export var y: int = 0
var nb: int

func _ready():
	spawn()


func spawn():
	randomize()
	nb =randi_range(-15,0)
	var game_node = get_tree().root.get_node("GameManager")  # à adapter selon ta hiérarchie
	var obj =scene_to_instanciate.instantiate()
	obj.position = Vector2(x+nb,y)
	game_node.add_child(obj)



func _on_timer_timeout():
	spawn()
