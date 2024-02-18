tag @s remove flag
clear @s minecraft:red_banner

execute at @e[tag=red,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["red","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],CustomName:'{"text":"redFlag"}'}

scoreboard players add @e[tag=blue,tag=capturePoint,limit=1] ctf_flagsCapped 1
scoreboard players add @s gst_points 1
execute store result bossbar gm:blue value run scoreboard players get @e[tag=blue,tag=capturePoint,limit=1] ctf_flagsCapped
scoreboard players operation §9Blue ctf_showCaps = @e[type=area_effect_cloud,tag=blue,tag=capturePoint,limit=1] ctf_flagsCapped

tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"text":"Blue","color":"blue","bold":true},{"text":" has scored a point!\n","color":"gold","bold":true}]
bossbar set gm:red name ["",{"text":"Red","color":"red","bold":true},{"text":" - "},{"text":"[Flag at point]","color":"green"}]

execute as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 2
