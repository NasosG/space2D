extends Control

const STAGE = "Level : ";

var scene_Andromeda = "res://environment/scene/Andromeda.tscn";
var scene_Centurion = "res://environment/scene/Centurion.tscn";
var scene_Aphrodite = "res://environment/scene/Aphrodite.tscn";
var scene_Zeus = "res://environment/scene/Zeus Nebula.tscn";
var scene_Nemesia = "res://environment/scene/Nemesia.tscn";
#var scene_story = "res://environment/scene/gameStory.tscn"

func _ready():
	$CenterContainer/VBoxContainer/Stage.text = STAGE + str(AutoLoad._stage);
	$CenterContainer/VBoxContainer/Name.text = AutoLoad._stage_name;

func _on_Timer_timeout():
	if (AutoLoad._stage == 1):
		AutoLoad._stage += 1;
		AutoLoad._stage_name = "Centurion Galaxy";
		get_tree().change_scene(scene_Andromeda);
	elif (AutoLoad._stage == 2):
		AutoLoad._stage += 1;
		AutoLoad._stage_name = "Aphrodite Galaxy";
		get_tree().change_scene(scene_Centurion);
	elif (AutoLoad._stage == 3):
		AutoLoad._stage += 1;
		AutoLoad._stage_name = "Zeus Nebula Galaxy";
		get_tree().change_scene(scene_Aphrodite);
	elif (AutoLoad._stage == 4):
		AutoLoad._stage += 1;
		AutoLoad._stage_name = "Nemesia Galaxy";
		get_tree().change_scene(scene_Zeus);
	else: 
		get_tree().change_scene(scene_Nemesia);
