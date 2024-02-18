# called to setup a honey trap
# killstreak:setup/paint_trap | killstreak:setup/item
# @s = honey trap item to setup

#summon and setup damage tracker bot
summon bat 0 10 0 {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:2f,Tags:["ks_life","tp","map","paint_trap","noId"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
execute positioned 0 10 0 as @e[type=bat,tag=ks_life,tag=noId,distance=..1,sort=nearest,limit=1] store result score @s ks_batId run scoreboard players add $id ks_batId 1
tag @e[type=bat,tag=ks_life,tag=noId] remove noId

#summon stand
execute if score @s gm_team matches 1 run summon armor_stand ~ ~-1.8 ~ {Marker:1,Invulnerable:1b,Invisible:1b,Tags:["map","red","paint_trap","flame","has_bat","ks_selected_stand","ks_decay"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:6227719}}}]}
execute if score @s gm_team matches 2 run summon armor_stand ~ ~-1.8 ~ {Marker:1,Invulnerable:1b,Invisible:1b,Tags:["map","blue","paint_trap","flame","has_bat","ks_selected_stand","ks_decay"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:2303}}}]}
execute if score @s gm_team matches 3 run summon armor_stand ~ ~-1.8 ~ {Marker:1,Invulnerable:1b,Invisible:1b,Tags:["map","ffa","paint_trap","flame","has_bat","ks_selected_stand","ks_decay"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:10982913}}}]}

scoreboard players operation @e[type=armor_stand,tag=ks_selected_stand,sort=nearest,limit=1] ks_batId = $id ks_batId

#give stand the player id
execute positioned ~ ~-1.8 ~ run scoreboard players operation @e[type=armor_stand,distance=..1,sort=nearest,tag=paint_trap,tag=ks_selected_stand,limit=1] gm_id = @s gm_id

#kill the item
kill @s
tag @e[type=armor_stand,tag=ks_selected_stand] remove ks_selected_stand

