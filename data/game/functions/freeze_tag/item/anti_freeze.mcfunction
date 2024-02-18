# called to run an anti-freeze
# game:freeze_tag/item/anti_freeze | called from game:freeze_tag/item/setup
# @s = item with FreezeTagItem:1b nbt tag that is a blaze_powder

execute if score @s gm_team matches 1 as @e[type=item,nbt={Item:{id:"minecraft:ice"}},scores={gm_team=2},distance=..2] run tag @s add failed
execute if score @s gm_team matches 2 as @e[type=item,nbt={Item:{id:"minecraft:ice"}},scores={gm_team=1},distance=..2] run tag @s add failed


execute if score @s[tag=!failed] gm_team matches 2 as @a[team=2frozen_blue,tag=frozen,distance=..1.5] unless score @s ft_defrosting matches 1.. run scoreboard players add @s ft_defrosting 1
execute if score @s[tag=!failed] gm_team matches 1 as @a[team=4frozen_red,tag=frozen,distance=..1.5] unless score @s ft_defrosting matches 1.. run scoreboard players add @s ft_defrosting 1

execute if entity @a[distance=..1.5,tag=frozen] run playsound minecraft:block.fire.ambient master @a[distance=..3] ~ ~ ~ 1 1.6
