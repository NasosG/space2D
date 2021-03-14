extends Node2D

export (int) var speed = 5;
export (Texture) var _texture;
var a;
func _ready():
	$Sprite.texture = _texture;
	$Sprite2.texture = _texture;

func _process(delta):
	if (!a):
		position.x -= 5 * delta;
	else:
		position.x += 5 * delta;
	
	if global_position.x < -100 || global_position.x > 0:
		a = !a;
		
	"""
	# never happens as long as code above exists
	if global_position.x < -get_viewport().size.x:
		position.x = 0;
	"""
