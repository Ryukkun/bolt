# Called when a player is respawning in ffa
# kill_handle:respawn/ffa | called from kill_handle:respawn/main
# @s = dead player
tag @s add kh_pTarget

#update kill stats
function game:ffa/update_kills

#creates spawn weights
function game:ffa/spawn_algorithm

#handles player
execute as @s at @e[tag=spawn,tag=ffa,tag=spawn_point,sort=random,limit=1] run tp @s ~ ~0.2 ~

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["ffa","sheild","map"]}
execute as @e[type=area_effect_cloud,distance=..1,sort=nearest,tag=ffa,tag=sheild] unless score @s gm_id matches 1.. run scoreboard players operation @s gm_id = @p[tag=dead,team=!spectator,tag=kh_pTarget] gm_id

gamemode adventure @s

tag @a remove arrow_kill
tag @s remove dead
tag @s remove blownup
tag @s remove kh_pTarget
scoreboard players reset @s kh_respawnTime
tag @s add respawned

scoreboard players set @s ffa_invincible 1

#reset stats
effect clear @s
