# called to get stats about the map when team is selected
# lobby:signs/help/map/team | called by lobby:signs/help/map/check
# @s = player running function

execute if score map cm_main matches 0 run function lobby:signs/help/maps/mesa
execute if score map cm_main matches 1 run function lobby:signs/help/maps/ice
execute if score map cm_main matches 2 run function lobby:signs/help/maps/warehouse
execute if score map cm_main matches 3 run function lobby:signs/help/maps/caverns
execute if score map cm_main matches 4 run function lobby:signs/help/maps/space
execute if score map cm_main matches 5 run function lobby:signs/help/maps/nation
