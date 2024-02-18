#called to check if a map is loaded
# map:nation/check | called by map:check/team

#spawns
execute if block 1495 63 -116 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 1608 63 -116 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#ctp and ct
execute if score gameMode cm_main matches 0..1 if block 1526 60 -84 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 1577 60 -148 air run scoreboard players add pointsLoaded cm_miscellaneous 1
