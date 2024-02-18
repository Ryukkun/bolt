tag @s remove flag
clear @s minecraft:blue_banner

execute at @e[tag=blue,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["blue","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],CustomName:'{"text":"blueFlag"}'}

scoreboard players add @e[tag=red,tag=capturePoint,limit=1] ctf_flagsCapped 1
scoreboard players add @s gst_points 1
execute store result bossbar gm:red value run scoreboard players get @e[type=area_effect_cloud,tag=red,tag=capturePoint,limit=1] ctf_flagsCapped
scoreboard players operation §4Red ctf_showCaps = @e[type=area_effect_cloud,tag=red,tag=capturePoint,limit=1] ctf_flagsCapped

tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"text":"Red","color":"red","bold":true},{"text":" has scored a point!\n","color":"gold","bold":true}]
bossbar set gm:blue name ["",{"text":"Blue","color":"blue","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]

execute as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 2
