#spawns
execute if block 523 100 -22 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 571 100 -114 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#ctp and ctf
execute if score gameMode cm_main matches 0..1 if block 557 100 -25 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 537 100 -111 air run scoreboard players add pointsLoaded cm_miscellaneous 1
