extends Area2D

func _on_body_entered(body):
	
	GameManager.add_point()
	self.queue_free()
	
