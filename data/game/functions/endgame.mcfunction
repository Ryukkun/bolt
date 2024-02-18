bossbar set lb:title visible true
bossbar set gm:round_time visible false
scoreboard objectives setdisplay belowName wins
scoreboard objectives setdisplay sidebar lb_display

#clean players
clear @a
effect clear @a
kill @e[type=!player,tag=!remain]
effect give @a minecraft:regeneration 30 255 true

#update stats (players)
execute as @a run scoreboard players operation @s stats_kills += @s kills
execute as @a run scoreboard players operation @s stats_deadCount += @s gstats_deadCount

#reset 1
tag @a remove arrow_kill
tag @a remove dead
tag @a remove blownup
tag @a remove respawned

advancement revoke @a only killhandle:root

execute if score keepTeams gm_options matches 0 as @a run function lobby:team/join/lobby


#tp players
tp @a[team=!spectator] 0 47 0
tp @a[team=spectator] -19 47 -27

#setspawn at spawn
spawnpoint @a 0 48 0

#reset scoreboards
scoreboard objectives setdisplay list kills

scoreboard players reset * gm_killMaths
scoreboard players set gameState cm_main 0

#update stats general
scoreboard players operation lastMode st_core = gameMode cm_main
scoreboard players operation $arrowsShot st_arrows += $arrows kh_arrowId
scoreboard players operation $grenadesUsed st_grenades += $snowballs ks_snowballId
execute at @e[type=minecraft:area_effect_cloud,tag=stats,tag=sign] run data merge block ~ ~ ~ {Text3:"{\"score\":{\"name\":\"$arrowsShot\",\"objective\":\"stats_arrows\"},\"color\":\"yellow\",\"bold\":\"true\"}"}
execute at @e[type=minecraft:area_effect_cloud,tag=stats,tag=sign] run data merge block ~ ~ ~2 {Text3:"{\"score\":{\"name\":\"$grenadesUsed\",\"objective\":\"stats_grenades\"},\"color\":\"yellow\",\"bold\":\"true\"}"}

#reset scores
scoreboard players reset * killStreak
scoreboard players reset * kh_killedby
scoreboard players reset * gm_inGame

scoreboard players reset roundTime gm_main

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.4

kill @e[tag=ks_item]
function game:nametags_on
schedule function lobby:load_lobby 1t

gamemode adventure @a

