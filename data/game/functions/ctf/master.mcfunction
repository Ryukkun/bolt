execute at @e[tag=flag,tag=blue,tag=!home] positioned ~-0.75 ~ ~-0.75 as @p[dx=1.5,dy=5,dz=1.5,team=1blue,gamemode=adventure] run function game:ctf/returnflag
execute at @e[tag=flag,tag=red,tag=!home] positioned ~-0.75 ~ ~-0.75 as @p[dx=1.5,dy=5,dz=1.5,team=3red,gamemode=adventure] run function game:ctf/returnflag

execute at @e[tag=flag,tag=blue] positioned ~-0.75 ~ ~-0.75 as @p[dx=1.6,dy=5,dz=1.6,team=3red,gamemode=adventure] run function game:ctf/blue_capped
execute at @e[tag=flag,tag=red] positioned ~-0.75 ~ ~-0.75 as @p[dx=1.6,dy=5,dz=1.6,team=1blue,gamemode=adventure] run function game:ctf/red_capped

execute at @e[tag=flag,tag=blue] unless block ~ ~2.3 ~ air positioned ~-2 ~ ~-2 as @p[dx=4,dy=5,dz=4,team=3red,gamemode=adventure] run function game:ctf/blue_capped
execute at @e[tag=flag,tag=red] unless block ~ ~2.3 ~ air positioned ~-2 ~ ~-2 as @p[dx=4,dy=5,dz=4,team=1blue,gamemode=adventure] run function game:ctf/red_capped

#execute at @e[tag=flag] as @p[distance=1.9..10] run scoreboard players set @s ct_cooldown 0
effect give @e[tag=flag,tag=!home] minecraft:glowing 1 0 true

execute at @e[tag=flag,tag=red,tag=home] positioned ~-1 ~2 ~-1 as @p[dx=2,dy=2,dz=2,team=3red,tag=flag] run function game:ctf/red_score
execute at @e[tag=flag,tag=blue,tag=home] positioned ~-1 ~2 ~-1 as @p[dx=2,dy=2,dz=2,team=1blue,tag=flag] run function game:ctf/blue_score

title @a[tag=flag] actionbar {"text":"You have the flag!","color":"red","bold":true}
execute as @a[tag=flag] at @s run particle minecraft:crit ~ ~ ~ 0 1 0 0.1 10 normal @s

#check flag is ingame and player has not logged out
execute unless entity @e[tag=red,tag=flag,type=armor_stand] unless entity @a[team=1blue,tag=flag] run function game:ctf/no_flag_timeout
execute unless entity @e[tag=blue,tag=flag,type=armor_stand] unless entity @a[team=3red,tag=flag] run function game:ctf/no_flag_timeout

#end game
execute as @e[tag=capturePoint] if score @s ctf_flagsCapped >= pointsToWin gm_options run function game:ctf/endgame

execute if score relogTime gm_main matches 200.. run function game:ctf/endgame