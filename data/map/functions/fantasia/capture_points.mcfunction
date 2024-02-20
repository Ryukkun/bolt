#called to summon capture pointes for ice
# map:ice/capture_points

summon area_effect_cloud 341 39 -38 {NoGravity:1b,Team:"1blue",Duration:2100000000,Tags:["blue","capturePoint","map"],CustomName:"{\"text\":\"Blue point\",\"color\":\"blue\"}",CustomNameVisible:0b}
summon area_effect_cloud 284 39 -56 {NoGravity:1b,Team:"3red",Duration:2100000000,Tags:["red","capturePoint","map"],CustomName:"{\"text\":\"Red point\",\"color\":\"red\"}",CustomNameVisible:0b}
