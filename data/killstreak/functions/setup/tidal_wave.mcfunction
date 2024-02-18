#called to setup the tidal wave
# killstreak:setup/tidal_wave | killstreak:setup/item
# @s = tidal wave item

summon armor_stand ~ ~ ~ {Marker:1,Invulnerable:1b,Invisible:1b,Tags:["map","tidal_wave","ks_selected_stand","ks_decay"],DisabledSlots:2039583}

#id the stand
scoreboard players operation @e[type=armor_stand,distance=..1,sort=nearest,tag=tidal_wave,tag=ks_selected_stand,limit=1] gm_id = @s gm_id

#kill the item
kill @s
tag @e[type=armor_stand,tag=ks_selected_stand] remove ks_selected_stand

title @a times 0 25 5
title @a title ["",{"text":"!!! WARNING !!!!","color":"red","bold":true}]
title @a subtitle ["",{"text":"Wave Imminent","color":"dark_red"}]
