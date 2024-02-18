# called when the lobby is running to do parkour
# lobby:parkour/main | called by lobby:main

#handle checkpoints
execute at @e[type=area_effect_cloud,tag=parkour,tag=checkpoint] align xyz positioned ~-1 ~ ~-1 as @a[dx=2,dy=3,dz=2,gamemode=adventure,scores={pk_checkpoint=1..}] if score @e[type=area_effect_cloud,tag=parkour,tag=checkpoint,distance=..4,sort=nearest,limit=1] pk_checkpoint > @s pk_checkpoint run function lobby:parkour/checkpoint
execute at @e[type=area_effect_cloud,tag=parkour,tag=checkpoint,tag=start] align xyz positioned ~-1 ~ ~-1 as @a[dx=2,dy=3,dz=2,gamemode=adventure] unless score @s pk_checkpoint matches 1.. run function lobby:parkour/start

#execute at @e[type=area_effect_cloud,tag=parkour,tag=checkpoint] align xyz positioned ~-1 ~ ~-1 as @a[dx=2,dy=3,dz=2,gamemode=adventure] run particle angry_villager ~ ~ ~ 0 2 0 0.1 1 force

#handle people in the parkour
execute as @a at @s if block ~ 40 ~ magenta_concrete if score @s pk_checkpoint matches 1.. run function lobby:parkour/in_parkour
execute as @a[tag=in_parkour] at @s unless block ~ 40 ~ magenta_concrete run function lobby:parkour/left_area

#kill items
kill @e[type=item,nbt={Item:{tag:{ParkourItem:1}}}]

