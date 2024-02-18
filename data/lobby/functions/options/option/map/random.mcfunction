# called to get a random map
# lobby:options/option/map/random | called by game:pre-init

summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: ["rnd_num_generator","map"]}

execute store result score random_map cm_miscellaneous run data get entity @e[type=area_effect_cloud,tag=rnd_num_generator,sort=random,limit=1] UUID[0] 1

execute if score gameMode cm_main matches 2 run scoreboard players operation random_map cm_miscellaneous %= ffaMapCount cm_main
execute unless score gameMode cm_main matches 2 run scoreboard players operation random_map cm_miscellaneous %= teamMapCount cm_main

scoreboard players operation map cm_main = random_map cm_miscellaneous

scoreboard players reset random_map cm_miscellaneous

#reset map cycle and set to current map
function lobby:options/option/map/cycle/main
