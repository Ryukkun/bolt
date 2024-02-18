# Called when a player to be forzen and given all the correct settings
# kill_handle:killed/freeze/core | called by kill_handle:killed/freeze/freeze & kill_handle:killed/freeze/error
# @s = player to freeze
summon armor_stand ~ ~ ~ {NoGravity:0b,Invulnerable:1b,Invisible:1b,Tags:["freeze","map","idsystem"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}
scoreboard players operation @e[type=armor_stand,tag=freeze,distance=..0.2,sort=nearest] gm_id = @s gm_id
tag @s add frozen

scoreboard players reset @s ft_defrosting

effect give @s hunger 6 255 true

team join 4frozen_red @s[team=3red]
team join 2frozen_blue @s[team=1blue]

execute as @s[team=2frozen_blue] run playsound minecraft:item.trident.throw master @a[team=1blue] ~ ~ ~ 100000 1 0
execute as @s[team=4frozen_red] run playsound minecraft:item.trident.throw master @a[team=3red] ~ ~ ~ 100000 1 0

playsound minecraft:item.trident.return master @s ~ ~ ~ 7 1.5
gamemode adventure @s
clear @s #game:freeze_items
