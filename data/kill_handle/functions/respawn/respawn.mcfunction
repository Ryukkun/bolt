# Called when a player is respawning in general
# kill_handle:respawn/respawn | called from kill_handle:respawn/main
# @s = dead player
#tp the dead player to spawn
tp @s[team=3red] @e[type=area_effect_cloud,tag=red,tag=spawn,limit=1,sort=random]
tp @s[team=1blue] @e[type=area_effect_cloud,tag=blue,tag=spawn,limit=1,sort=random]

gamemode adventure @s

tag @s remove arrow_kill
tag @s remove dead
tag @s remove blownup
scoreboard players reset @s kh_respawnTime
effect clear @s 
