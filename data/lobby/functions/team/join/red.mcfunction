# ran to join red team
# lobby:team/join/red | called by lobby:team/normal_selection
# @s = player to join red
team join 3red
tellraw @s ["",{"text":"+ ","bold":true,"color":"green"},{"text":"Joined Team Red","bold":true,"color":"red"}]
tag @s remove lobby
scoreboard players set @s gm_team 1
tag @s remove old_red
