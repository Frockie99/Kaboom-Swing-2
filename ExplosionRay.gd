extends RayCast2D

var strenght = 3
var collider = null
var tilemap

var cell = Vector2()
var tile_id = - 1
var rotat = 0

var initialized = false

var explded_tile_particle = load("res://scenes/TileMapParticle.tscn")
var instance = null

func _ready():
	tilemap = get_parent().get_node("TileMap")
	

func init(cast, global_pos, rot):
	cast_to = cast
	position = global_pos
	rotat = rot
	initialized = true
	
func _physics_process(delta):
	collider = get_collider()
	if initialized and collider != null:
		if collider.name == "TileMap":
			cell = tilemap.world_to_map(get_collision_point() - get_collision_normal())
			tilemap.set_cellv(cell, 26)
			
			instance = explded_tile_particle.instance()
			instance.init(tilemap.map_to_world(cell))
			get_parent().add_child(instance)
			strenght -= 1
			
			get_parent().get_node("Pg").addDegree(rotat)
			$ExplodedTileSound.pitch_scale = rand_range(0.25, 2)
			$ExplodedTileSound.play()
		
			
			
			
			
			
			
			
			
			
	if strenght <= 0:
		queue_free()


func _on_Timer_timeout():
	queue_free()
