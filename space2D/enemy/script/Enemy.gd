extends Area2D

 
export (PackedScene) var Explosion_Scene :PackedScene;
var rng = RandomNumberGenerator.new();
var rng_vertical = RandomNumberGenerator.new();
export (int) var move_speed = 250;

var BulletScene = preload("res://bullet/scene/EnemyBullet.tscn");

signal destroy;

func _ready():
	rng.randomize();
	rng_vertical.randomize();
	move_speed = rng.randi_range(200, 400);
	
func _process(delta):
	position.x -= move_speed * delta;
	position.y -= 10 * delta;

func _on_VisibilityNotifier2D_screen_exited():
	queue_free();

func _on_Enemy_area_entered(area):
	if area.is_in_group("bullet") and !area.is_enemy:
		var eInstance = Explosion_Scene.instance();
		eInstance.position = position;
		get_parent().add_child(eInstance);
		area.queue_free();
		queue_free();
		emit_signal("destroy");
