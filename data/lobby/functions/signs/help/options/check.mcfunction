# called when a player selects a menu sign while shifting
# lobby:signs/help/options/check | Called by lobby:options/check
# @s = player who slected the sign
execute if score @s lb_optionTrig matches 1 run function lobby:signs/help/options/respawn_time
execute if score @s lb_optionTrig matches 2 run function lobby:signs/help/options/points_to_win
execute if score @s lb_optionTrig matches 3 run function lobby:signs/help/options/keep_teams
execute if score @s lb_optionTrig matches 4 run function lobby:signs/help/options/nametags
execute if score @s lb_optionTrig matches 5 run function lobby:signs/help/options/item_point_dropping
execute if score @s lb_optionTrig matches 6 run function lobby:signs/help/options/tab_scoreboard
execute if score @s lb_optionTrig matches 7 run function lobby:signs/help/options/game_time
execute if score @s lb_optionTrig matches 8 run function lobby:signs/help/options/killstreaks

execute if score @s lb_optionTrig matches 100 run function lobby:signs/help/options/gamemodes/main

### Trigger id
# 1 = Respawn Time
# 2 = Points to win \/
# 3 = Keep teams \/
# 4 = nametages \/
# 5 = CTF/CTP allow power up point dropping \/
# 6 = tab scoreboard (not visible on freeze tag) \/
# 7 = Time per Game/ round
# 8 = kill streak items
