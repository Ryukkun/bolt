scoreboard players set gameState cm_main 10
title @a times 0 100 10
title @a title {"text":"Game starting in!","color":"gold","bold":true}
scoreboard players set temp cm_miscellaneous 5
execute at @a run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 2

#data merge block 6 47 -14 {Text2:"{\"text\":\"[Cancel\",\"color\":\"dark_red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function game:stop_start\"}}",Text3:"{\"text\":\"Countdown]\",\"color\":\"dark_red\",\"bold\":true}"}
execute as @e[type=minecraft:armor_stand,tag=start,tag=sign] run data merge entity @s {CustomName:'{"text":"Cancel Countdown","color":"dark_red","bold":true}'}
