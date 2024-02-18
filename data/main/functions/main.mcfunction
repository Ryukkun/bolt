#Main loop for the game, will run all the phases functions
# main:main | called from minecraft:tick

## --- No phase ---
effect give @a[tag=!frozen,scores={cm_hunger=..19}] saturation 1 0 true
effect give @a resistance 3 6 true
effect give @a weakness 3 6 true
execute as @e[type=armor_stand,tag=flame] run data merge entity @s {Fire:2s}
function player_handle:main
function main:trapdoor_controll

## --- Phase 0 --- Lobby
execute if score gameState cm_main matches 0 run function lobby:main
execute if score gameState cm_main matches 10 run function lobby:stop_start_check

## --- Phase 1 --- Loading
execute if score gameState cm_main matches 1 run function main:phases/loading

## --- Phase 2 --- Inint
#### DONT USE

## --- Phase 3 --- in Game
execute if score gameState cm_main matches 3 run function main:phases/in_game

## --- Phase 3 --- end game


