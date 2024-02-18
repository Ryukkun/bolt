# called to setup the tomb map
# map:tomb/setup | called by map:init

#spawn AEC
#summon area_effect_cloud CORDS {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 984.5 49.2 -55.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 1000.5 50.2 -51.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 1003.5 48.2 -41.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 981.5 49.2 -41.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 967.5 42.2 -54.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 952.5 45.2 -55.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 962.5 38.2 -18.6 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 972.5 39.2 -14.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 989.5 41.2 -17.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 982.5 41.2 -29.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 980.5 41.2 -34.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 986.5 50.2 -19.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 977.5 50.2 -25.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 954.5 51.2 -18.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 965.5 48.2 -19.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 958.5 38.2 -30.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 968.5 38.2 -42.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 991.5 45.2 -29.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 987.5 45.2 -44.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}

#others
execute if score randomPowerups cm_main matches 1 run function map:tomb/powerup_points
