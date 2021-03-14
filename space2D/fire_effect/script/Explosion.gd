extends Node2D

func _ready():
	$Animation.play("Explosion Effect");
	var explosionSound = AudioStreamPlayer.new();
	self.add_child(explosionSound);
	explosionSound.stream = load("res://sounds//Enemy_Explosion.ogg");
	explosionSound.play();

func _on_Animation_animation_finished(anim_name):
	queue_free();
