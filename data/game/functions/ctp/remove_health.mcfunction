scoreboard players add @s gst_points 1
scoreboard players reset @s ctp_cooldown

#blue#
execute if entity @s[team=3red] run scoreboard players remove @e[tag=blue,tag=capturePoint,limit=1] ctp_pointHealth 1
execute if entity @s[team=3red] run playsound minecraft:block.note_block.chime master @a[team=1blue] ~ ~ ~ 1000 0

#red#
execute if entity @s[team=1blue] run scoreboard players remove @e[tag=red,tag=capturePoint,limit=1] ctp_pointHealth 1
execute if entity @s[team=1blue] run playsound minecraft:block.note_block.chime master @a[team=3red] ~ ~ ~ 1000 0

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1000 0

############################

###updates boss bars###
execute store result bossbar gm:blue value run scoreboard players get @e[tag=blue,tag=capturePoint,limit=1] ctp_pointHealth
execute store result bossbar gm:red value run scoreboard players get @e[tag=red,tag=capturePoint,limit=1] ctp_pointHealth

###updates scoreboard###
execute store result score blue ctp_pointHealth run scoreboard players get @e[tag=blue,tag=capturePoint,limit=1] ctp_pointHealth
scoreboard players operation blue ctp_pointHealth *= $multiplier ctp_pointHealth
scoreboard players operation blue ctp_pointHealth /= pointsToWin gm_options
execute store result score red ctp_pointHealth run scoreboard players get @e[tag=red,tag=capturePoint,limit=1] ctp_pointHealth
scoreboard players operation red ctp_pointHealth *= $multiplier ctp_pointHealth
scoreboard players operation red ctp_pointHealth /= pointsToWin gm_options
scoreboard players operation §9Blue ctp_showHealth = blue ctp_pointHealth
scoreboard players operation §cRed ctp_showHealth = red ctp_pointHealth
