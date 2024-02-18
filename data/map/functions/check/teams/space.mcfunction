#ran to check the space map is loaded
#ctf and ctp
execute if score gameMode cm_main matches 0..1 if block 1180 34 -100 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 1236 32 -44 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#spawn
execute if block 1236 37 -100 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 1180 37 -44 air run scoreboard players add pointsLoaded cm_miscellaneous 1
