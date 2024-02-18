# called as a honey trap
# killstreak:actions/honey_trap | killstreak:main
# @s = honey trap

#handle effects
execute positioned ~ ~1.8 ~ at @s[tag=blue] as @a[gamemode=adventure,distance=..2,team=3red] run effect give @s slowness 2 1 true 
execute positioned ~ ~1.8 ~ at @s[tag=red] as @a[gamemode=adventure,distance=..2,team=1blue] run effect give @s slowness 2 1 true
execute positioned ~ ~1.8 ~ at @s[tag=faa] as @a[gamemode=adventure,distance=..2,team=1blue] unless score @s gm_id = @e[type=armor_stand,distance=..2,tag=honey_trap,sort=nearest,limit=1] gm_id run effect give @s slowness 2 1 true

#check if it has been killed
tag @s remove ks_has_bat
execute positioned ~ ~1.8 ~ at @e[type=bat,tag=honey_trap,distance=..3] if score @s ks_batId = @e[type=bat,tag=honey_trap,distance=..1,sort=nearest,limit=1] ks_batId run tag @s add ks_has_bat
execute as @s[tag=!ks_has_bat,scores={ks_decay=5..}] run function killstreak:remove/honey_trap
execute if score @s ks_decay matches 600.. run function killstreak:remove/honey_trap
