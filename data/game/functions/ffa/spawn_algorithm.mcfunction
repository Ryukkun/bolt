####reset from last round####
tag @e[tag=spawn_point] remove spawn_point
scoreboard players set @e[tag=spawn,tag=ffa] ffa_spawnWeight 0

#####algorithm#####
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=150.0001..] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 43
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=110.0001..150.0001] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 22

execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..110.0001] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..80] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..60] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..45] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..30] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..20] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..15] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..10] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 10
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..5] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 20
execute as @e[tag=spawn,tag=ffa] at @s as @a[tag=!dead,tag=!needspawn,tag=ingame,distance=..1.5] run scoreboard players add @e[tag=spawn,tag=ffa,limit=1,sort=nearest,distance=..0.1] ffa_spawnWeight 900

####selects 3 lowest####
scoreboard players set weight ffa_spawnWeight 1000000
scoreboard players operation weight ffa_spawnWeight < @e[tag=spawn,tag=ffa] ffa_spawnWeight
execute as @e[tag=spawn,tag=ffa] if score @s ffa_spawnWeight = weight ffa_spawnWeight run tag @s add spawn_point

scoreboard players set weight ffa_spawnWeight 1000000
scoreboard players operation weight ffa_spawnWeight < @e[tag=spawn,tag=ffa,tag=!spawn_point] ffa_spawnWeight
execute as @e[tag=spawn,tag=ffa,tag=!spawn_point] if score @s ffa_spawnWeight = weight ffa_spawnWeight run tag @s add spawn_point

scoreboard players set weight ffa_spawnWeight 1000000
scoreboard players operation weight ffa_spawnWeight < @e[tag=spawn,tag=ffa,tag=!spawn_point] ffa_spawnWeight
execute as @e[tag=spawn,tag=ffa,tag=!spawn_point] if score @s ffa_spawnWeight = weight ffa_spawnWeight run tag @s add spawn_point

