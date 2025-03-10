extends Area2D

var score: int = 0 

func _on_body_entered(body):
	score+=1
	print("score : ",score) 
	queue_free()
	
