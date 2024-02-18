# called when a ice_grenade blows up
# killstreak:remove/ice_grenade | killstreak:action/ice_grenade
# @s = ice_grenade

execute as @e[type=creeper,tag=ks_grenade] if score @s ks_creeperId = @e[type=armor_stand,tag=ks_ice_grenade,tag=ks_tracer,sort=nearest,limit=1] ks_creeperId run tp ~ ~ ~

#set it for blowing up
data merge entity @s {ArmorItems:[{},{},{},{}]}
tag @s add exploded
tag @s add ks_decay
scoreboard players reset @s ks_decay

#save bats
execute as @e[type=bat,tag=ks_life] run data merge entity @s {Invulnerable:1b}
