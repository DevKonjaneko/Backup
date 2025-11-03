extends Node3D
@onready var anim = $AnimationPlayer
@export var toggle_to : Node3D

func _on_area_3d_body_entered(body: Node3D):
	if not body.is_in_group("self"):
		anim.play("press")
		print("ตัวรับน้ำหนักทำงาน")
		#await anim.animation_finished
		#if toggle_to:
		toggle_to.locked = false
		toggle_to.toggle_door()
		
func _on_area_3d_body_exited(body: Node3D):
	if not body.is_in_group("self"):
		anim.play_backwards("press")
		print("กลับสู่สถานะปกติ")
		#await anim.animation_finished
		#if toggle_to:
		toggle_to.locked = false
		toggle_to.toggle_door()
