# called to setup the neon map
# map:neon/setup | called by map:init

#spawn AEC
#summon area_effect_cloud 657.5 55.2 -25.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 663.5 43.2 -28.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 673.5 47.2 -53.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 648.5 47.2 -66.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 637.5 53.2 -44.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 644.5 55.2 -65.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 676.5 55.2 -68.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 659.5 39.2 -47.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 656.5 43.2 -57.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 682.5 53.2 -37.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 677.5 51.2 -59.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 662.5 55.2 -70.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 657.5 55.2 -25.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 642.5 55.2 -25.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 660.5 51.2 -38.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}
summon area_effect_cloud 666.5 51.2 -57.5 {NoGravity:1b,Duration:2100000000,Tags:["ffa","spawn","map"]}

#others
execute if score randomPowerups cm_main matches 1 run function map:neon/powerup_points
