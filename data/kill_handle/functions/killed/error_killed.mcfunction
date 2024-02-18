execute if entity @s[tag=arrow_kill] run tellraw @a [{"selector":"@s"},{"text":" was killed by an arrow","color":"gold"}]
execute if entity @s[tag=blownup] run tellraw @a [{"selector":"@s"},{"text":" was blown up","color":"gold"}]

scoreboard players set @s killStreak 0

playsound minecraft:item.trident.return master @s ~ ~ ~ 7 1.5

tag @s remove arrow_kill
tag @s remove blownup

tag @s add dead
gamemode spectator @s
