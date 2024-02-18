# called as a ice_grenade
# killstreak:actions/ice_grenade | killstreak:main
# @s = ice_grenade armor_stand

execute at @e[type=snowball,tag=ks_ice_grenade,tag=setup] if score @e[type=snowball,tag=ks_ice_grenade,tag=setup,sort=nearest,limit=1] ks_snowballId = @s ks_snowballId run tp @s ~ ~ ~

execute if score @s ks_decay matches 49 run function killstreak:remove/ice_grenade_first

execute if score @s ks_decay matches 50.. at @s run function killstreak:remove/ice_grenade