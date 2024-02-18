
effect give @a[gamemode=adventure,nbt=!{Health:20f}] instant_health 5 0 true

replaceitem entity @a[gamemode=adventure,team=3red] armor.chest minecraft:leather_chestplate{display:{color:16711680},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
replaceitem entity @a[gamemode=adventure,team=1blue] armor.chest minecraft:leather_chestplate{display:{color:255},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
replaceitem entity @a[gamemode=adventure,team=1ffa] armor.chest minecraft:leather_chestplate{display:{color:9079296},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
replaceitem entity @a[gamemode=adventure,team=0ffa_leader] armor.chest minecraft:leather_chestplate{display:{color:16106496},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}

kill @e[type=item,nbt=!{Item:{tag:{keepitem:1b}}}]

replaceitem entity @a[gamemode=adventure,nbt=!{Inventory:[{Slot:17b,id:"minecraft:arrow",Count:4b}]},scores={gm_inGame=1}] container.17 arrow 4
replaceitem entity @a[gamemode=adventure,nbt=!{Inventory:[{Slot:0b,id:"minecraft:bow",Count:1b}]},tag=!frozen,scores={gm_inGame=1}] container.0 bow{Unbreakable:1b}

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
