scoreboard players set gameState cm_main 0
title @a times 0 60 10
title @a title {"text":"Countdown cancelled.","color":"gold","bold":true}
scoreboard players reset temp cm_miscellaneous

#data modify block 6 47 -14 front_text.messages[1] set value '{"text":"[Start Game]","color":"dark_blue","bold":true,"clickEvent":{"action":"run_command","value":"trigger optionsTrig set 1000"}}'
#data modify block 6 47 -14 front_text.messages[2] set value ''
execute as @e[type=minecraft:armor_stand,tag=start,tag=sign] run data merge entity @s {CustomName:'{"text":"Start Game","color":"gold","bold":true}'}
#tellraw @a [{"selector":"@s","bold":"true"},{"text":" has stopped the countdown!","color":"gold","bold":"true"}]
tellraw @a [{"text":"The start countdown has been cancelled!","color":"gold","bold":true}]

#unpower button
execute at @e[type=minecraft:armor_stand,tag=start,tag=sign] run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east,powered=false]