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
	if (AutoLoad._stage % 5 == 1): 
		change_level("Centurion Galaxy", scene_Andromeda);
	elif (AutoLoad._stage % 5 == 2): 
		change_level("Aphrodite Galaxy", scene_Centurion);
	elif (AutoLoad._stage % 5 == 3): 
		change_level("Zeus Nebula Galaxy", scene_Aphrodite);
	elif (AutoLoad._stage % 5 == 4): 
		change_level("Nemesia Galaxy", scene_Zeus);
	else: 
		change_level("Andromeda Galaxy", scene_Nemesia);		
		
func change_level(stage_name, next_scene):
	AutoLoad._stage += 1;
	AutoLoad._stage_name = str(stage_name);
	get_tree().change_scene(next_scene);
