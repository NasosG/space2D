extends Node2D

export (int) var speed = 4;

func _process(delta):
	position.x -= speed * delta;

	#if global_position.x < -get_viewport().size.x:
	#	position.x = 0;
	
	
