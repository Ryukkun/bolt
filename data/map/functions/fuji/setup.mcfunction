# called to setup the fuji map
# map:fuji/setup | called by map:init

#spawn AEC
summon area_effect_cloud 761 41.2 -14 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 803 35.2 -14 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 764 35.2 -32 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 771 39.2 -39 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 791 39.2 -35 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 783 36.2 -57 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 809 36.2 -52 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 789 40.2 -38 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 788 30.2 -47 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 760 42.2 -57 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 760 42.2 -51 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 801 35.2 -59 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 770 38.2 -24 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 768 39.2 -69 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 807.5 35.2 -29.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
#summon area_effect_cloud cords {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}

#others
execute if score randomPowerups cm_main matches 1 run function map:fuji/powerup_points
