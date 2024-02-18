execute if score loadingTime cm_miscellaneous matches 20 run scoreboard players remove temp cm_miscellaneous 1
execute if score loadingTime cm_miscellaneous matches 20 unless score temp cm_miscellaneous matches 0 at @a run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 2
execute if score loadingTime cm_miscellaneous matches 20 run scoreboard players set loadingTime cm_miscellaneous 0
title @a subtitle {"score":{"name":"temp","objective":"cm_miscellaneous"},"color":"gold","bold":true}

execute if score loadingTime cm_miscellaneous matches 5 if score temp cm_miscellaneous matches 0 at @a run playsound minecraft:block.note_block.flute master @a ~ ~ ~ 10 2
execute if score loadingTime cm_miscellaneous matches 5 if score temp cm_miscellaneous matches 0 run function game:pre-init

