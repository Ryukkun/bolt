# Called as a snowball that has not been setup to check its not in a spawn
# killstreak:setup/ice_grenade_check | called from killstreak:main
# @s = snowball to check

#id it
data modify storage kh:uuids check_uuid set from entity @s Owner
function kill_handle:uuid_check/start
scoreboard players operation @s gm_id = $id kh_mathTacking

execute if entity @e[type=area_effect_cloud,tag=spawn,tag=map,distance=..5] run tag @s add failed

execute at @s[tag=!failed] run function killstreak:setup/ice_grenade
execute at @s[tag=failed] as @a[scores={gm_inGame=1..}] if score @s gm_id = @e[type=snowball,tag=failed,sort=nearest,limit=1] gm_id run function killstreak:items/ice_grenade
kill @s[tag=failed]
