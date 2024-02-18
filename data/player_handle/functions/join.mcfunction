# run when a player joins for the first time
# player_handle:join | called from player_handle:main
scoreboard players reset @s
spawnpoint @s 0 48 0

effect clear @s
clear @s

title @s times 0 80 20
title @s title {"text":"Bolt","color":"gold","bold":true}
title @s subtitle {"text":"by kruthers","color":"blue"}

tellraw @a ["",{"text":"Welcome, ","color":"gold"},{"selector":"@s","color":"reset"},{"text":", to Bolt!","color":"gold"}]
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1000 0 1
effect give @s blindness 1 100 true

#id player and store there uuid
execute store result score @s gm_id run scoreboard players add $players gm_id 1
execute at @e[type=minecraft:area_effect_cloud,tag=stats,tag=sign] run data merge block ~ ~ ~-2 {Text3:"{\"score\":{\"name\":\"$players\",\"objective\":\"gm_id\"},\"color\":\"yellow\",\"bold\":\"true\"}"}

data modify storage kh:uuids players append from entity @s UUID

scoreboard players reset @s cm_leaveGame
function player_handle:lobby_tags

execute unless score gameState cm_main matches 1..3 run function player_handle:lobby/join
execute if score gameState cm_main matches 1..3 run function player_handle:game/join

bossbar set gm:round_time players @a
bossbar set ffa:leader players @a
bossbar set gm:red players @a
bossbar set gm:blue players @a
