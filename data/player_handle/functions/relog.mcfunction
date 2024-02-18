# run when a player relogs
# player_handle:relog | called from player_handle:main

effect clear @s
clear @s

spawnpoint @s 0 48 0

title @s times 0 80 20
title @s title {"text":"Bolt","color":"gold","bold":true}
title @s subtitle {"text":"by kruthers","color":"blue"}

playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1000 0 1
effect give @s blindness 1 100 true

scoreboard players reset @s cm_leaveGame


tag @s remove arrow_kill
tag @s remove blowup
tag @s remove dead
tag @s remove respawn
tag @s remove ffa_leader
tag @s remove ingame
tag @s remove frozen
tag @s remove shielded

tag @s remove oldBlue
tag @s remove oldRed
tag @s remove oldLobby

execute unless score gameState cm_main matches 1..3 run function player_handle:lobby/relog
execute if score gameState cm_main matches 1..3 run function player_handle:game/relog

bossbar set gm:round_time players @a
bossbar set ffa:leader players @a
bossbar set gm:red players @a
bossbar set gm:blue players @a
