extends RigidBody3D #Photography v1.0

@export var picture_texture: Texture2D
@onready var mesh_instance = $MeshInstance3D

func _ready() -> void:
	freeze = true
	var material = StandardMaterial3D.new()
	material.albedo_texture = picture_texture
	mesh_instance.set_surface_override_material(0, material)
