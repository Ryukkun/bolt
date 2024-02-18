#called to summon capture pointes for caverns
# map:caverns/capture_points

summon area_effect_cloud 557 37 -25 {NoGravity:1b,Team:"1blue",Duration:2100000000,Tags:["blue","capturePoint","map"],CustomName:"{\"text\":\"Blue point\",\"color\":\"blue\"}",CustomNameVisible:0b}
summon area_effect_cloud 537 37 -111 {NoGravity:1b,Team:"3red",Duration:2100000000,Tags:["red","capturePoint","map"],CustomName:"{\"text\":\"Red point\",\"color\":\"red\"}",CustomNameVisible:0b}
