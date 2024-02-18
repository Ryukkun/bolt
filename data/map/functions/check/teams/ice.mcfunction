#spawns
execute if block 339 100 -73 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 286 100 -21 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#ctp and ctf
execute if score gameMode cm_main matches 0..1 if block 341 100 -38 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 284 100 -56 air run scoreboard players add pointsLoaded cm_miscellaneous 1
