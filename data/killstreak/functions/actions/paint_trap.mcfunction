# called as a paint trap
# killstreak:actions/paint_trap | killstreak:main
# @s = paint trap

#handle effects
execute positioned ~ ~1.8 ~ at @s[tag=blue] if entity @a[gamemode=adventure,distance=..2,team=3red] run tag @s add ks_blowup
execute positioned ~ ~1.8 ~ at @s[tag=red] if entity @a[gamemode=adventure,distance=..2,team=1blue] run tag @s add ks_blowup
execute positioned ~ ~1.8 ~ as @s[tag=faa] at @a[gamemode=adventure,distance=..2] unless score @s gm_id = @p[gamemode=adventure,distance=..2] gm_id run tag @s add ks_blowup

execute at @s[tag=ks_blowup] run function killstreak:remove/paint_trap

#check if it has been killed
tag @s remove ks_has_bat
execute positioned ~ ~1.8 ~ at @e[type=bat,tag=paint_trap,distance=..3] if score @s ks_batId = @e[type=bat,tag=paint_trap,distance=..1,sort=nearest,limit=1] ks_batId run tag @s add ks_has_bat
execute as @s[tag=!ks_has_bat] unless score @s ks_decay matches ..5 run function killstreak:remove/paint_trap

#remove the decay tag after a bit
execute if score @s ks_decay matches 6.. run tag @s remove ks_decay
execute if score @s ks_decay matches 6.. run scoreboard players reset @s ks_decay
