# called to run checks on changing/information
# lobby:options/check | called by lobby:main
# @s = player whith an lb_optionTrig score

execute if score @s lb_sneaking matches 1.. unless score @s lb_optionTrig matches 101..102 run function lobby:signs/help/options/check

execute unless score options_frozen lb_options matches 1.. unless score @s lb_sneaking matches 1.. run function lobby:options/option/check
execute unless score options_frozen lb_options matches 1.. if score @s lb_sneaking matches 1.. if score @s lb_optionTrig matches 101..102 run function lobby:options/option/check

execute if score options_frozen lb_options matches 1.. unless score @s[tag=admin] lb_sneaking matches 1.. run function lobby:options/option/check

scoreboard players reset @s lb_optionTrig

