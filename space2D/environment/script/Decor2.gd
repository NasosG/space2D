extends Node2D

#export (int) var speed = 5;
export (Texture) var _texture;
var screen_limit;

func _ready():
	$Sprite.texture = _texture;
	$Sprite2.texture = _texture;

func _process(delta):
	var speed = 5;
	
	if (!screen_limit):
		position.x -= speed * delta;
	else:
		position.x += speed * delta;
	
	if global_position.x < -100 || global_position.x > 0:
		screen_limit = !screen_limit;
		
	"""
	# never happens as long as code above exists
	if global_position.x < -get_viewport().size.x:
		position.x = 0;
	"""
