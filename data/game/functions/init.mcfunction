bossbar set lb:title visible false

gamemode spectator @a[team=spectator]
gamemode spectator @a[tag=lobby]
gamemode adventure @a[team=3red]
gamemode adventure @a[team=1blue]
gamemode adventure @a[team=1ffa]
effect give @a minecraft:invisibility 1

#update scoreboard in tab
execute if score tabScoreboard gm_options matches 1 run scoreboard objectives setdisplay list killStreak

#update nametags
execute if score nametags gm_options matches 1 run function game:nametags_on
execute if score nametags gm_options matches 0 run function game:nametags_off

#sort players
gamemode spectator @a[team=9spectator]
execute unless score gameMode cm_main matches 2 run tp @a[team=1blue] @e[tag=blue,tag=spawn,limit=1]
execute unless score gameMode cm_main matches 2 run tp @a[team=3red] @e[tag=red,tag=spawn,limit=1]
scoreboard players set @a[gamemode=adventure] gm_inGame 1
scoreboard players add @a[gamemode=adventure] gamesplayed 1

#setspawns
execute as @a at @s run spawnpoint

tag @a remove respawned
tag @a remove arrow_kill
tag @a remove blownup
tag @a remove dead
clear @a

#reset scores
scoreboard players reset * kh_arrowId
scoreboard players reset * ks_snowballId
scoreboard players set $arrows ks_snowballId 0
scoreboard players set $snowballs kh_arrowId 0
scoreboard players set @a kills 0

scoreboard players set @a gst_bow_used 0
scoreboard players set @a gst_cross_used 0
scoreboard players set @a gst_death_count 0
scoreboard players set @a gst_grenades 0
scoreboard players set @a gst_points 0

#round time
execute if score maxGameTime gm_options matches 1.. run function game:round_timer/setup

execute if score gameMode cm_main matches 0 run function game:ctf/setup
execute if score gameMode cm_main matches 1 run function game:ctp/setup
execute if score gameMode cm_main matches 2 run function game:ffa/setup
execute if score gameMode cm_main matches 3 run function game:freeze_tag/setup
execute if score gameMode cm_main matches 4 run function game:tdm/setup
