#called to locate a player who dropped an item and give it an id score
# killstreak:steup/id | Called from killstreak:check_item & game:freeze_tag/item/check
# @s = item without an id
data modify storage kh:uuids check_uuid set from entity @s Thrower
function kill_handle:uuid_check/start
scoreboard players operation @s gm_id = $id kh_mathTacking
execute at @a[team=!spectator,tag=!lobby] if score @p[team=!spectator,tag=!lobby] gm_id = @s gm_id run scoreboard players operation @s gm_team = @p[team=!spectator,tag=!lobby] gm_team
