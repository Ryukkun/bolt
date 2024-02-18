## lobby:main - called from main:main when the game is lobby phase
# effects
effect give @a resistance 4 6 true
effect give @a weakness 4 6 true
execute as @a at @s if block ~ 40 ~ light_gray_concrete run effect give @s speed 1 3 true
execute as @a at @s unless block ~ 40 ~ light_gray_concrete run effect clear @s speed

#armour stand effects
execute at @e[type=armor_stand,tag=playerStand,tag=chain] run particle minecraft:flame ~ ~ ~ 0.2 0.6 0.2 0 1 normal

#team joining
execute if score teamJoining lb_options matches 1 at @e[type=armor_stand,tag=teamSelection,tag=!spectator] as @a[distance=..3] at @s run function lobby:team/normal_selection
execute at @e[type=armor_stand,tag=teamSelection,tag=spectator] as @a[distance=..3] at @s run function lobby:team/spectator_selection

# Options
execute unless score options_frozen lb_options matches 1 run scoreboard players enable @a lb_optionTrig
execute if score options_frozen lb_options matches 1 run scoreboard players enable @a[tag=admin] lb_optionTrig
execute as @a[scores={lb_optionTrig=-2147483648..2147483647}] unless score @s lb_optionTrig matches 0 run function lobby:options/check
execute as @a[scores={lb_coreTrig=-2147483648..2147483647}] unless score @s lb_coreTrig matches 0 run function lobby:trigger_check

execute at @e[type=armor_stand,tag=option_hinter,tag=lobby_entity] as @a[tag=!got_options_hint,distance=..8] at @s if block ~ 38 ~ cyan_concrete run function lobby:options/hint

scoreboard players reset @a lb_sneaking

#player tping
execute positioned -11.8 47 2 run tp @a[distance=..1] -15 56 67
execute positioned -12.65 56.00 67.51 run tp @a[distance=..1] -9 46 2

# Start button
execute at @e[type=minecraft:armor_stand,tag=start,tag=sign] if block ~ ~ ~ stone_button[powered=true] run function lobby:start_game

#parkour
function lobby:parkour/main
