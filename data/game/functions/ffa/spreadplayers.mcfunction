#creates spawn weights
function game:ffa/spawn_algorithm

#handles player
execute as @s at @e[tag=spawn,tag=ffa,tag=spawn_point,sort=random,limit=1] run tp @s ~ ~ ~

gamemode adventure @s

tag @s remove needspawn

execute if entity @a[tag=needspawn] as @r[tag=needspawn] run function game:ffa/spreadplayers