
# 矢の最初だけの処理
execute as @e[type=arrow,tag=!Ryu.MArrow.Loaded] if data entity @s Owner at @s run function manipulate-arrow:load-arrow

# Motion代入
execute as @e[type=arrow,tag=Ryu.MArrow.Loaded] at @s run function manipulate-arrow:tick_arrow

# Particle
execute at @e[type=minecraft:arrow,tag=Ryu.MArrow.Loaded] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.02 1 force