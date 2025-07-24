extends CanvasLayer


func _ready():
	$AnimationPlayer.play("fadeout")
	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
