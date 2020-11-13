extends Area2D

export(String, FILE, "*.tscn") var world_scene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	# should probably use signals instead
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			print("yee")
			get_tree().change_scene(world_scene)
