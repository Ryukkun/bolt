#called when the in the game phase to hanndel any kill streak/power up items
# killstreak:main | called from main:phases/in_game

#handle any bats
execute as @e[type=bat,tag=tp,tag=ks_life] at @s run function killstreak:setup/bat
execute as @e[type=bat,tag=ks_life] run data merge entity @s {Invulnerable:0b}

#handle any decaying items
scoreboard players add @e[tag=ks_decay] ks_decay 1
kill @e[type=armor_stand,tag=ks_decay,tag=exploded,scores={ks_decay=5..}]

#run actions
execute as @e[type=armor_stand,tag=honey_trap] at @s run function killstreak:actions/honey_trap
execute as @e[type=armor_stand,tag=paint_trap,tag=!exploded] at @s run function killstreak:actions/paint_trap
execute as @e[type=armor_stand,tag=ks_ice_grenade,tag=!exploded] at @s run function killstreak:actions/ice_grenade
execute as @e[type=armor_stand,tag=tidal_wave] at @s run function killstreak:actions/tidal_wave

#setups
execute as @e[type=item,nbt={Item:{tag:{powerup:1b}}}] at @s run function killstreak:check_item
execute as @e[type=snowball,tag=!setup] at @s run function killstreak:setup/ice_grenade_check

kill @e[type=minecraft:area_effect_cloud,tag=]
