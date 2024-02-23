bossbar set lb:title visible false

gamemode spectator @a[team=spectator]
gamemode spectator @a[tag=lobby]
gamemode adventure @a[team=3red]
gamemode adventure @a[team=1blue]
gamemode adventure @a[team=1ffa]
effect give @a minecraft:invisibility 1

#update scoreboard in tab
execute if score tabScoreboard gm_options matches 1 run scoreboard objectives setdisplay list killStreak

#update nametags
execute if score nametags gm_options matches 1 run function game:nametags_on
execute if score nametags gm_options matches 0 run function game:nametags_off

#sort players
gamemode spectator @a[team=9spectator]
execute unless score gameMode cm_main matches 2 run tp @a[team=1blue] @e[tag=blue,tag=spawn,limit=1]
execute unless score gameMode cm_main matches 2 run tp @a[team=3red] @e[tag=red,tag=spawn,limit=1]
scoreboard players set @a[gamemode=adventure] gm_inGame 1
scoreboard players add @a[gamemode=adventure] gamesplayed 1

#setspawns
execute as @a at @s run spawnpoint

tag @a remove respawned
tag @a remove arrow_kill
tag @a remove blownup
tag @a remove dead
clear @a

#reset scores
scoreboard players reset * kh_arrowId
scoreboard players reset * ks_snowballId
scoreboard players set $arrows ks_snowballId 0
scoreboard players set $snowballs kh_arrowId 0
scoreboard players set @a kills 0

scoreboard players set @a gst_bow_used 0
scoreboard players set @a gst_cross_used 0
scoreboard players set @a gst_death_count 0
scoreboard players set @a gst_grenades 0
scoreboard players set @a gst_points 0

#item, effect
item replace entity @a[gamemode=adventure,team=3red] armor.chest with minecraft:leather_chestplate{display:{color:16711680},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
item replace entity @a[gamemode=adventure,team=1blue] armor.chest with minecraft:leather_chestplate{display:{color:255},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
item replace entity @a[gamemode=adventure,team=1ffa] armor.chest with minecraft:leather_chestplate{display:{color:9079296},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
item replace entity @a[gamemode=adventure,team=0ffa_leader] armor.chest with minecraft:leather_chestplate{display:{color:16106496},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:9999,Operation:0,UUID:[I;-1693740065,-1166130917,-1483302806,-57929458],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;222478804,-1976940782,-1939081352,1470455043]}]}
effect give @a[gamemode=adventure] instant_health 5 0 true

#round time
execute if score maxGameTime gm_options matches 1.. run function game:round_timer/setup

execute if score gameMode cm_main matches 0 run function game:ctf/setup
execute if score gameMode cm_main matches 1 run function game:ctp/setup
execute if score gameMode cm_main matches 2 run function game:ffa/setup
execute if score gameMode cm_main matches 3 run function game:freeze_tag/setup
execute if score gameMode cm_main matches 4 run function game:tdm/setup
