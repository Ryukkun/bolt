scoreboard players reset tempflagcount cm_miscellaneous

#updated boss-bar
execute unless entity @e[tag=red,tag=flag,type=armor_stand] unless entity @a[team=1blue,tag=flag] run bossbar set gm:red name ["",{"text":"Red","color":"red","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]
execute unless entity @e[tag=blue,tag=flag,type=armor_stand] unless entity @a[team=3red,tag=flag] run bossbar set gm:blue name ["",{"text":"Blue","color":"blue","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]

#tellraw
execute unless entity @e[tag=red,tag=flag,type=armor_stand] unless entity @a[team=1blue,tag=flag] run tellraw @a ["",{"text":"Game > ","bold":true,"color":"dark_green"},{"text":"Red ","color":"red","bold":true},{"text":"flag has been returned","color":"gray","bold":true}]
execute unless entity @e[tag=blue,tag=flag,type=armor_stand] unless entity @a[team=3red,tag=flag] run tellraw @a ["",{"text":"Game > ","bold":true,"color":"dark_green"},{"text":"Blue ","color":"blue","bold":true},{"text":"flag has been returned","color":"gray","bold":true}]

#respawn flags
execute unless entity @e[tag=red,tag=flag,type=armor_stand] unless entity @a[team=1blue,tag=flag] at @e[tag=red,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["red","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],CustomName:'{"text":"redFlag"}'}
execute unless entity @e[tag=blue,tag=flag,type=armor_stand] unless entity @a[team=3red,tag=flag] at @e[tag=blue,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["blue","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],CustomName:'{"text":"blueFlag"}'}
