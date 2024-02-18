#called to remove & blowup the tidal wave
# killstreak:remove/tidal_wave | killstreak:action/tidal_wave
# @s = tidal wave item

execute at @a[scores={gm_inGame=1},tag=!dead] run particle minecraft:explosion ~ ~ ~ 3 3 3 0 100 normal @a

execute at @a[scores={gm_inGame=1}] if score @p gm_id = @s gm_id run tellraw @a ["",{"selector":"@p"},{"text":" just killed everyone!","color":"dark_aqua"}]

gamemode spectator @a[scores={gm_inGame=1},tag=!dead]

tag @a[tag=!dead,scores={gm_inGame=1}] add dead

execute if score gameMode cm_main matches 0 run function kill_handle:killed/with_flag

scoreboard players reset @a killStreak
scoreboard players reset @a kh_killedby
scoreboard players reset @a ctp_cooldown

tag @a remove shielded
clear @a minecraft:diamond_leggings

kill @s
