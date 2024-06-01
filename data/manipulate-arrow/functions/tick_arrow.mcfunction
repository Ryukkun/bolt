# as Arrow  , at @s 

# find PLayer
tag @a remove Ryu.MArrow._
execute at @a if score @s gm_id = @p gm_id run tag @p add Ryu.MArrow._
execute unless entity @p[tag=Ryu.MArrow._] run kill @s

# motion
execute at @p[tag=Ryu.MArrow._] run function manipulate-arrow:calc/calc-motion