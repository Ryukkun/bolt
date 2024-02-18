# Called when a player has died with the flag in ctf
# kill_handle:killed/with_flag | called from kill_handle:killed/main
# @s = dead player with the flag
execute at @s[team=3red] run summon armor_stand ~ ~-2 ~ {Team:"1blue",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["blue","flag","component"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],CustomName:'{"text":"blueFlag"}'}
execute at @s[team=1blue] run summon armor_stand ~ ~-2 ~ {Team:"3red",Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["red","flag","component"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],CustomName:'{"text":"redFlag"}'}
execute if entity @s[tag=dead,team=1blue] run tellraw @a ["",{"text":"Game > ","bold":true,"color":"dark_green"},{"text":"Blue ","color":"blue","bold":true},{"text":"has dropped the flag!","color":"gray","bold":true}]
execute if entity @s[tag=dead,team=3red] run tellraw @a ["",{"text":"Game > ","bold":true,"color":"dark_green"},{"text":"Red ","color":"red","bold":true},{"text":"has dropped the flag!","color":"gray","bold":true}]
execute if entity @s[tag=dead] as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.9

execute if entity @s[tag=dead,team=1blue] run bossbar set gm:red name ["",{"text":"Red","color":"red","bold":true},{"text":" - "},{"text":"[Flag Dropped]","color":"yellow"}]
execute if entity @s[tag=dead,team=3red] run bossbar set gm:blue name ["",{"text":"Blue","color":"blue","bold":true},{"text":" - "},{"text":" [Flag Dropped]","color":"yellow"}]

clear @s red_banner
clear @s blue_banner

tag @s remove flag

effect clear @s glowing
