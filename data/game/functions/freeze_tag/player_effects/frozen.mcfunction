# called as a player who is frozen
# game:freeze_tag/player_effects/frozen | Caled from game:freeze_tag/main
# @s = frozen player

# standard effects
execute at @e[type=minecraft:armor_stand,tag=freeze] if score @e[distance=0,limit=1,type=minecraft:armor_stand] gm_id = @s gm_id positioned ~ ~ ~ unless entity @s[distance=..0.1] run tp ~ ~ ~
effect give @s[scores={cm_hunger=..4}] saturation 1 0 true
effect give @s jump_boost 1 128 true
replaceitem entity @s armor.head ice{HideFlags:3,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-100,Operation:0,UUID:[I;1555306611,1938049151,-1910531808,-814306379]}]}

#defrosting
execute if score @s ft_defrosting matches 1.. run function game:freeze_tag/player_effects/defrosting
execute if score @s ft_defrosting matches 100.. run function game:freeze_tag/player_effects/defrosted
