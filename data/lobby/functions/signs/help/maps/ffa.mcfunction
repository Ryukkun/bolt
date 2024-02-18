# called to get stats about the map when ffa is selected
# lobby:signs/help/map/ffa | called by lobby:signs/help/map/check
# @s = player running function

execute if score map cm_main matches 0 run function lobby:signs/help/maps/fuji
execute if score map cm_main matches 1 run function lobby:signs/help/maps/tomb
execute if score map cm_main matches 2 run function lobby:signs/help/maps/neon
