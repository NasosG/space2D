extends Node2D

export (int) var planetSpeed;

func _process(delta):
	position.x -= planetSpeed * delta;
	position.y -= delta;
	#if global_position.x < -get_viewport().size.x:
	#	position.x = 0;
	
	
