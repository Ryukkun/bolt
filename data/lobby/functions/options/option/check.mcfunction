# called when an option needs changing to figure the trigger
# lobby:options/option/check | called by lobby:options/check
# @s = player changing option

execute if score @s lb_optionTrig matches 1 run function lobby:options/option/1/main
execute if score @s lb_optionTrig matches 2 run function lobby:options/option/2/main
execute if score @s lb_optionTrig matches 3 run function lobby:options/option/3/main
execute if score @s lb_optionTrig matches 4 run function lobby:options/option/4/main
execute if score @s lb_optionTrig matches 5 run function lobby:options/option/5/main
execute if score @s lb_optionTrig matches 6 run function lobby:options/option/6/main
execute if score @s lb_optionTrig matches 7 run function lobby:options/option/7/main
execute if score @s lb_optionTrig matches 8 run function lobby:options/option/8/main

execute if score @s lb_optionTrig matches 100 run function lobby:options/option/gamemode/main
execute if score @s lb_optionTrig matches 101 run function lobby:options/option/map/previous/main
execute if score @s lb_optionTrig matches 102 run function lobby:options/option/map/next/main

### Trigger id
# 1 = 
# 2 = Points to win \/
# 3 = Keep teams \/
# 4 = nametages \/
# 5 = CTF/CTP allow power up point dropping \/
# 6 = tab scoreboard (not visible on freeze tag) \/
# 7 = Time per Game/ round
# 8 = kill streak items
