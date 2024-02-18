# Called when in the loading phases
# main:pahse/loading | called from main:main
scoreboard players add loadingTime cm_miscellaneous 1

execute if score loadingTime cm_miscellaneous matches 25.. if score gameMode cm_main matches 2 run function map:check/ffa
execute if score loadingTime cm_miscellaneous matches 25.. unless score gameMode cm_main matches 2 run function map:check/teams
