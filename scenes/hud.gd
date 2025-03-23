extends Control

@onready var game_manager = %GameManager
@onready var coinlabel = $coinTexture/coinlabel

func _process(delta):
	coinlabel.text="x " + str(game_manager.score)
