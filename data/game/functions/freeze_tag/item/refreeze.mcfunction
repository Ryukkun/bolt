# called to run an refreeze
# game:freeze_tag/item/refreeze | called from game:freeze_tag/item/setup
# @s = item with FreezeTagItem:1b nbt tag that is a ice

execute if score @s gm_team matches 1 as @a[team=2frozen_blue,tag=frozen,distance=..1.5,scores={ft_defrosting=1..}] run scoreboard players set @s ft_defrosting 0
execute if score @s gm_team matches 2 as @a[team=4frozen_red,tag=frozen,distance=..1.5,scores={ft_defrosting=1..}] run scoreboard players set @s ft_defrosting 0
