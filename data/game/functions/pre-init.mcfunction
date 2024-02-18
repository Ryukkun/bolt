#prep game
scoreboard players set gameState cm_main 1
scoreboard players reset temp cm_miscellaneous
scoreboard objectives setdisplay sidebar
execute at @e[type=minecraft:armor_stand,tag=start,tag=sign] run setblock ~ ~ ~ air

#Handle options
execute if score map cm_main matches -1 run function lobby:options/option/map/random

#prep players
execute unless score gameMode cm_main matches 2 run team join 9spectator @a[tag=lobby]
execute if score gameMode cm_main matches 2 run team join 1ffa @a[team=!spectate]
scoreboard players reset * kills
tag @a remove arrow_kill
tag @a remove dead
tag @a remove frozen
tag @a remove blownup

gamemode adventure @a
effect give @a resistance 2 6 true
effect give @a weakness 2 6 true
scoreboard objectives setdisplay belowName

clear @a[tag=!lobby]

kill @e[tag=map]

function map:tp

scoreboard players set pointsLoaded cm_miscellaneous 0

scoreboard players set @a[team=3red] gm_team 1
scoreboard players set @a[team=1blue] gm_team 2
scoreboard players set @a[team=1ffa] gm_team 3

