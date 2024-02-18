execute as @r[tag=lobby] run function lobby:team/join/red
execute as @r[tag=lobby] run function lobby:team/join/blue
execute if entity @a[tag=lobby] run function lobby:team/random
