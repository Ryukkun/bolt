# ran to join blue team
# lobby:team/join/blue | called by lobby:team/normal_selection
# @s = player to join blue
team join 1blue
tellraw @s ["",{"text":"+ ","bold":true,"color":"green"},{"text":"Joined Team Blue","bold":true,"color":"blue"}]
tag @s remove lobby
scoreboard players set @s gm_team 2
tag @s remove old_blue
