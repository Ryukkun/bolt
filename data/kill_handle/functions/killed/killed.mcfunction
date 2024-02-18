# Called when a player has been killed normaly
# kill_handle:killed/killed | called from kill_handle:main
# @s = player who was killed

execute as @s[tag=arrow_kill] run function kill_handle:killed/arrow/main
execute as @s[tag=blownup] run function kill_handle:killed/blowup/main

#effects
playsound minecraft:item.trident.return master @s ~ ~ ~ 7 1.5

scoreboard players set @s killStreak 0

tag @s remove arrow_kill
tag @s remove blownup
clear @s arrow

#respawning
tag @s add dead
scoreboard players add @s gstats_deadCount 1
gamemode spectator @s


execute if score gameMode cm_main matches 2 run function game:ffa/update_kills

