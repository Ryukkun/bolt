scoreboard players set gameState cm_main 0
title @a times 0 60 10
title @a title {"text":"Countdown cancelled.","color":"gold","bold":true}
scoreboard players reset temp cm_miscellaneous

#data merge block 6 47 -14 {Text2:"{\"text\":\"[Start Game]\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger optionsTrig set 1000\"}}",Text3:""}
execute as @e[type=minecraft:armor_stand,tag=start,tag=sign] run data merge entity @s {CustomName:'{"text":"Start Game","color":"gold","bold":true}'}
#tellraw @a [{"selector":"@s","bold":"true"},{"text":" has stopped the countdown!","color":"gold","bold":"true"}]
tellraw @a [{"text":"The start countdown has been cancelled!","color":"gold","bold":true}]

#unpower button
execute at @e[type=minecraft:armor_stand,tag=start,tag=sign] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east,powered=false]