# Called when a player has been killed
# kill_handle:killed/main | called from kill_handle:main & kill_handle:blownup
# @s = player who was killed

tag @s[advancements={kill_handle:root=true}] add arrow_kill
advancement revoke @s only kill_handle:root

#handles killing
execute as @s[scores={kh_killedby=1..},tag=!frozen,tag=arrow_kill,team=3red] at @a[gamemode=adventure,team=4frozen_red] if score @p gm_id = @s kh_killedby if score gameMode cm_main matches 3 run scoreboard players set @s kh_killedby -8
execute as @s[scores={kh_killedby=1..},tag=!frozen,tag=arrow_kill,team=1blue] at @a[gamemode=adventure,team=2frozen_blue] if score @p gm_id = @s kh_killedby if score gameMode cm_main matches 3 run scoreboard players set @s kh_killedby -9
execute as @s[scores={kh_killedby=-9..-8}] run tag @s remove arrow_kill
execute as @s[scores={kh_killedby=1..},tag=!shielded,tag=!respawned] unless score gameMode cm_main matches 3 at @s run function kill_handle:killed/killed

execute as @s[scores={kh_killedby=1..},tag=!frozen] if score gameMode cm_main matches 3 at @s run function kill_handle:killed/freeze/freeze
execute as @s[scores={kh_killedby=1..},tag=frozen] if score gameMode cm_main matches 3 at @s run function kill_handle:killed/freeze/double

#where players are killed by un_id arrows
execute if score gameMode cm_main matches 3 as @s[tag=!frozen] unless score @s kh_killedby matches 1.. unless score @s kh_killedby matches -9..-8 at @s run function kill_handle:killed/freeze/error
execute unless score gameMode cm_main matches 3 if score gameState cm_main matches 3 unless score @s[tag=!shielded] kh_killedby matches 1.. run function kill_handle:killed/error_killed

scoreboard players reset @s kh_killedby
scoreboard players reset @s ctp_cooldown

scoreboard players add @s gst_death_count 1

#drop a flag in CTF
execute as @s[tag=flag,tag=!shielded] if score gameMode cm_main matches 0 run function kill_handle:killed/with_flag

#remove there extra life if they have it
execute as @s[tag=shielded] run function killstreak:remove/extra_life
