#called to check if a map is loaded
# map:nation/check | called by map:check/team

#spawns
execute if block 1066 74 -219 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if block 1064 74 -13 air run scoreboard players add pointsLoaded cm_miscellaneous 1

#ctp and ct
execute if score gameMode cm_main matches 0..1 if block 1030 65 -184 air run scoreboard players add pointsLoaded cm_miscellaneous 1
execute if score gameMode cm_main matches 0..1 if block 1100 65 -48 air run scoreboard players add pointsLoaded cm_miscellaneous 1
