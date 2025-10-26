extends Node2D


func _ready():
	if GlobalVars.cmth:
		$CanvasLayer / TextureButton.texture_normal = load("res://assets/logo/havana242.png")
	$IntroSound.play()


func _on_TextureButton_pressed():
	if not GlobalVars.cmth:
		OS.shell_open("http://havana24.net?ref=kaboom_swing")


func _on_IntroSound_finished():
	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	SceneChanger.change_scene("res://scenes/TitleScreen.tscn")
