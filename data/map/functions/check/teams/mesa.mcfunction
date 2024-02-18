#spawns
execute if block 228 100 -51 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 177 100 -35 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#ctp and ctf
execute if score gameMode cm_main matches 0..1 if block 229 100 -35 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 176 100 -51 air run scoreboard players add pointsLoaded cm_miscellaneous 1
