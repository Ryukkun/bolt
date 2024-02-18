execute unless score gameMode cm_main matches 3 run gamemode spectator @s
execute unless score gameMode cm_main matches 3 run tag @s add dead
execute if score gameMode cm_main matches 3 as @s at @s run function kill_handle:killed/freeze/error
scoreboard players reset @s killStreak
scoreboard players reset @s cm_leaveGame

tag @s remove blowup
tag @s remove respawn
#tag @s remove flag

clear @s minecraft:red_banner
clear @s minecraft:blue_banner

bossbar set gm:round_time players @a
bossbar set ffa:leader players @a
bossbar set gm:red players @a
bossbar set gm:blue players @a

