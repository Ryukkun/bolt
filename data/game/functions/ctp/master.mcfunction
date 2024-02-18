#handle cool down
execute at @e[tag=capturePoint] as @a[distance=..10,scores={ctp_cooldown=1..}] align xz positioned ~-1 ~ ~-1 unless entity @s[dx=3,dy=3,dz=3] run scoreboard players reset @s ctp_cooldown
execute at @e[tag=blue,tag=capturePoint] align xz positioned ~-1 ~ ~-1 as @a[dx=3,dy=3,dz=3,team=3red,gamemode=!spectator] unless entity @a[team=1blue,dx=3,dy=3,dz=3,gamemode=!spectator] run scoreboard players add @s ctp_cooldown 1
execute at @e[tag=red,tag=capturePoint] align xz positioned ~-1 ~ ~-1 as @a[dx=3,dy=3,dz=3,team=1blue,gamemode=!spectator] unless entity @a[team=3red,dx=3,dy=3,dz=3,gamemode=!spectator] run scoreboard players add @s ctp_cooldown 1

#point under attack
execute at @e[tag=red,tag=capturePoint] if entity @a[distance=..3,team=1blue] run title @a[team=3red] actionbar {"text":"Your point is under attack!","color":"red","bold":true}
execute at @e[tag=blue,tag=capturePoint] if entity @a[distance=..3,team=3red] run title @a[team=1blue] actionbar {"text":"Your point is under attack!","color":"red","bold":true}
#point safe
execute at @e[tag=red,tag=capturePoint] unless entity @a[distance=..3,team=1blue] run title @a[team=3red] actionbar {"text":"Your point is safe.","color":"green","bold":true}
execute at @e[tag=blue,tag=capturePoint] unless entity @a[distance=..3,team=3red] run title @a[team=1blue] actionbar {"text":"Your point is safe.","color":"green","bold":true}

execute as @a[scores={ctp_cooldown=20..}] run function game:ctp/remove_health

###end game###
execute if score @e[tag=capturePoint,limit=1,tag=red] ctp_pointHealth matches ..0 run function game:ctp/endgame
execute if score @e[tag=capturePoint,limit=1,tag=blue] ctp_pointHealth matches ..0 run function game:ctp/endgame
execute if score relogTime gm_main matches 200.. run function game:ctp/endgame