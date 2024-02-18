# called to setup the caverns map
# map:caverns/setup | called by map:init

#spawn AEC
summon area_effect_cloud 523 45.2 -22 {NoGravity:1b,Team:"1blue",Duration:2100000000,Tags:["blue","spawn","map"],Rotation:[-135.0f,0.0f],CustomName:"{\"text\":\"Blue spawn\",\"color\":\"blue\"}",CustomNameVisible:0b}
summon area_effect_cloud 571 45.2 -114 {NoGravity:1b,Team:"3red",Duration:2100000000,Tags:["red","spawn","map"],Rotation:[45.0f,0.0f],CustomName:"{\"text\":\"Red spawn\",\"color\":\"red\"}",CustomNameVisible:0b}

#others
execute if score gameMode cm_main matches 0..1 run function map:caverns/capture_points
execute if score randomPowerups cm_main matches 1 run function map:caverns/powerup_points
