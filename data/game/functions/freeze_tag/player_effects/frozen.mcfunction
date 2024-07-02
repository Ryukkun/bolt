# called as a player who is frozen
# game:freeze_tag/player_effects/frozen | Caled from game:freeze_tag/main
# as = at = frozen player

# standard effects
tag @s add freeze_mark
execute as @e[type=minecraft:armor_stand,distance=..10,tag=freeze] if score @s gm_id = @p[tag=freeze_mark,distance=0] gm_id unless entity @s[distance=..0.1] positioned as @s run tp @p[tag=freeze_mark] ~ ~ ~
tag @s remove freeze_mark
effect give @s[scores={cm_hunger=..4}] saturation 1 0 true
effect give @s jump_boost 1 128 true

#defrosting
execute if score @s ft_defrosting matches 1.. run function game:freeze_tag/player_effects/defrosting
execute if score @s ft_defrosting matches 100.. run function game:freeze_tag/player_effects/defrosted
