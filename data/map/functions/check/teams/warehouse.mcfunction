#spawns
execute if block 415 100 -32 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 451 43 -53 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#ctp and ctf
execute if score gameMode cm_main matches 0..1 if block 453 100 -29 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 413 41 -56 air run scoreboard players add pointsLoaded cm_miscellaneous 1
