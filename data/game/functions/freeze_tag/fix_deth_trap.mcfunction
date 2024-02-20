# 即死トラップ修正
# as = at = @e[type=arrow]

execute store result score @s fox_x1_arrow run data get entity @s Pos[0] 1000000
execute store result score @s fox_z1_arrow run data get entity @s Pos[2] 1000000
tag @s remove fox_pause
execute if score @s fox_x1_arrow = @s fox_x2_arrow if score @s fox_z1_arrow = @s fox_z2_arrow run tag @s add fox_pause
scoreboard players add @s[tag=fox_pause] fox_dethTrapTime 1
scoreboard players set @s[tag=!fox_pause] f-arrow-timer 0
kill @s[scores={fox_dethTrapTime=2..}]
scoreboard players operation @s fox_x2_arrow = @s fox_x1_arrow
scoreboard players operation @s fox_z2_arrow = @s fox_z1_arrow