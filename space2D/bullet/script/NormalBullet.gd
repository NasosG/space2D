extends Area2D

export (bool) var is_enemy = false;
export (int) var move_speed = 350;
export (float) var speed_multiplier = 1.5;

func _ready():
	$AnimationPlayer.play("Normal Bullet Effect");
	var hitSound = AudioStreamPlayer.new();
	self.add_child(hitSound);
	hitSound.stream = load("res://sounds//sfx_laser2.ogg");
	hitSound.play();

func _process(delta):
	if is_enemy: position.x -= move_speed * speed_multiplier * delta;
	else: position.x += move_speed * delta;

func _on_VisibilityNotifier2D_screen_exited():
	queue_free();
