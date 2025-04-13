extends Node

var score=0
var bottle=0

# Called when the node enters the scene tree for the first time.

func add_point():
	score+=5
	print(score)
	


func add_bottle():
	bottle+=1
	print("+1 bouteille trouvée")
