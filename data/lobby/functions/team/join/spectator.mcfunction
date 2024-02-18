# ran to join spectator team
# lobby:team/join/spectator | called by lobby:team/normal_selection
# @s = player to join spectator
tag @s[team=1blue] add old_blue
tag @s[team=3red] add old_red
tag @s[tag=lobby] add old_lobby

team join 9spectator
tellraw @s ["",{"text":"+ ","bold":true,"color":"green"},{"text":"will spectate.","bold":true,"color":"gray"}]
tag @s remove lobby
scoreboard players set @s gm_team 0
