kill @e[type=item, tag=!freeze_tag_item, nbt=!{Item:{tag:{keepitem:1b}}}]

item replace entity @a[gamemode=adventure,scores={gm_inGame=1},nbt=!{Inventory:[{Slot:17b,id:"minecraft:arrow",Count:4b}]}] container.17 with arrow 4
item replace entity @a[gamemode=adventure,tag=!frozen,scores={gm_inGame=1},nbt=!{Inventory:[{Slot:0b,id:"minecraft:bow",Count:1b}]}] container.0 with bow{HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}


scoreboard players reset PlayersInGame gm_main
execute if score gameMode cm_main matches 2 as @a[tag=ingame] run scoreboard players add PlayersInGame gm_main 1
execute unless score gameMode cm_main matches 2 as @a[scores={gm_inGame=1..},team=1blue,limit=1] run scoreboard players set PlayersInGame gm_main 1
execute unless score gameMode cm_main matches 2 as @a[scores={gm_inGame=1..},team=3red,limit=1] run scoreboard players add PlayersInGame gm_main 1
execute unless score PlayersInGame gm_main matches 2.. run scoreboard players add relogTime gm_main 1
execute if score relogTime gm_main matches 1.. if score PlayersInGame gm_main matches 2.. run scoreboard players set relogTime gm_main 0

#round time
execute unless score maxGameTime gm_options matches -1 run function game:round_timer/main

#y hight handling
#execute as @a[gamemode=adventure] store result score @s player_y run data get entity @s Pos[1]
#execute as @a[scores={player_y=..0}] run tag @s add dead

#execute as @e[tag=spawn,tag=!ffa] at @s run kill @e[type=arrow,distance=..5]
