# called to get stats about the map
# lobby:signs/help/map/check | called by click on the current map sign
# @s = player running function

execute if score gameMode cm_main matches 2 run function lobby:signs/help/maps/ffa
execute unless score gameMode cm_main matches 2 run function lobby:signs/help/maps/team

execute if score map cm_main matches -1 run function lobby:signs/help/maps/random

