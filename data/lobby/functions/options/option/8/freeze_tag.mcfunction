scoreboard players add $collisionRule fox_settings 1
execute unless score $collisionRule fox_settings matches 1 run scoreboard players set $collisionRule fox_settings 0

function lobby:options/option/8/update_collision