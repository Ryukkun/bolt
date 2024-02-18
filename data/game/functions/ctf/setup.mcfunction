bossbar set gm:red players @a
bossbar set gm:blue players @a
bossbar set gm:red visible true
bossbar set gm:blue visible true

bossbar set gm:blue name ["",{"text":"Blue","color":"blue","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]
bossbar set gm:red name ["",{"text":"Red","color":"red","bold":true},{"text":" - "},{"text":"[Flag at Point]","color":"green"}]

execute store result bossbar gm:blue max run scoreboard players get pointsToWin gm_options
execute store result bossbar gm:red max run scoreboard players get pointsToWin gm_options

scoreboard players set @e[tag=capturePoint,type=area_effect_cloud] ctf_flagsCapped 0

scoreboard players set §4Red ctf_showCaps 0
scoreboard players set §9Blue ctf_showCaps 0
scoreboard objectives setdisplay sidebar ctf_showCaps

execute store result bossbar gm:blue value run scoreboard players get @e[tag=blue,tag=capturePoint,limit=1] ctf_flagsCapped
execute store result bossbar gm:red value run scoreboard players get @e[tag=red,tag=capturePoint,limit=1] ctf_flagsCapped

execute at @e[tag=blue,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["blue","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}],CustomName:'{"text":"blueFlag"}'}
execute at @e[tag=red,tag=capturePoint] run summon armor_stand ~ ~-1.8 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["red","flag","component","home"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],CustomName:'{"text":"redFlag"}'}

execute at @e[tag=blue,tag=capturePoint] run setblock ~ ~-2 ~ blue_stained_glass
execute at @e[tag=red,tag=capturePoint] run setblock ~ ~-2 ~ red_stained_glass

tag @a remove flag

scoreboard players set @a gstats_ctfCapted 0
scoreboard players reset tempflagcount cm_miscellaneous

scoreboard players set gameState cm_main 3

tellraw @a {"text":"----------------------","color":"aqua","bold":true}
tellraw @a {"text":"Capture the Flag","color":"gold","bold":true,"underlined":true}
tellraw @a {"text":"Aim: Capture the enemy flag and return it to yours","color":"aqua"}
tellraw @a {"text":"----------------------","color":"aqua","bold":true}
