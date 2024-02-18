scoreboard players add loadingTime cm_miscellaneous 1
execute if score loadingTime cm_miscellaneous matches -5.. run function game:update_countdown
execute at @e[type=minecraft:armor_stand,tag=start,tag=sign] if block ~ ~ ~ minecraft:stone_button[powered=true] run function game:stop_start

function lobby:parkour/main
