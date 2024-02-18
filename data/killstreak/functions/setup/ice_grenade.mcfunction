# Called as a snowball that has not been setup
# killstreak:setup/ice_grenade | called from killstreak:setup/ice_grenade_check
# @s = snowball

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["ks_ice_grenade","map","ks_tracer","ks_selected_stand","gm_anti_spawn","ks_decay"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:27413}}},{},{},{}]}

#pass player id onto stand
scoreboard players operation @e[type=armor_stand,tag=ks_selected_stand,tag=ks_ice_grenade,sort=nearest,limit=1] gm_id = @s gm_id

#id the armour stand and snowball
execute store result score @e[type=armor_stand,tag=ks_ice_grenade,tag=ks_selected_stand,sort=nearest,limit=1] ks_snowballId run scoreboard players add $snowball ks_snowballId 1
scoreboard players operation @s ks_snowballId = $snowball ks_snowballId

#update tags
tag @e[type=armor_stand,tag=ks_selected_stand] remove ks_selected_stand
tag @s add setup
tag @s add ks_ice_grenade
tag @s add gm_anti_spawn
