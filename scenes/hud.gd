extends Control

@onready var coinlabel = $coinTexture/coinlabel
@onready var bottlelabel = $coinTexture/bottlelabel

func _process(delta):
	coinlabel.text="x " + str(GameManager.score)
	bottlelabel.text="x " + str(GameManager.bottle)
