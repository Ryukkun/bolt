#updates leader
scoreboard players reset * gm_killMaths

execute as @a[tag=ingame] run scoreboard players operation @s gm_killMaths = @s kills

scoreboard players set max gm_killMaths 1
scoreboard players operation max gm_killMaths > @a[tag=ingame,scores={kills=1..}] kills
execute store result bossbar ffa:leader value run scoreboard players get max gm_killMaths
execute if score max gm_killMaths matches 0 run scoreboard players set max gm_killMaths 1
scoreboard players operation @a[tag=ingame] gm_killMaths -= max gm_killMaths

scoreboard players set count ffa_leaders 0
scoreboard players set @a[scores={gm_killMaths=..-1}] ffa_leaders 0
scoreboard players set @a[scores={gm_killMaths=0}] ffa_leaders 1
scoreboard players operation count ffa_leaders += @a[tag=ingame] ffa_leaders

team join 1ffa @a[scores={ffa_leaders=0}]
team join 0ffa_leader @a[scores={ffa_leaders=1}]

execute if score count ffa_leaders matches 0 run bossbar set ffa:leader name ["",{"text":"No kills yet!","color":"gray"}]
execute if score count ffa_leaders matches 1 run bossbar set ffa:leader name ["",{"selector":"@a[team=0ffa_leader]"},{"text":" is in 1st!","color":"gray"}]
execute if score count ffa_leaders matches 2.. run bossbar set ffa:leader name ["",{"selector":"@a[team=0ffa_leader]"},{"text":" are in joint 1st!","color":"gray"}]

#new leader message
execute if score count ffa_leaders matches 1 run tag @a[team=0ffa_leader] add ffa_leader
execute as @a[tag=ffa_leader] run scoreboard players add newLeader ffa_leaders 1
execute if score count ffa_leaders matches 1 if score newLeader ffa_leaders matches 2.. run tellraw @a ["",{"text":"\nGame > ","bold":true,"color":"dark_green"},{"selector":"@a[team=0ffa_leader]"},{"text":" has taken the lead!\n","color":"gold","bold":true}]
execute if score count ffa_leaders matches 1 if score newLeader ffa_leaders matches 2.. run tag @a[team=1ffa,tag=ffa_leader] remove ffa_leader
scoreboard players set newLeader ffa_leaders 0


#end game
execute if score @a[team=0ffa_leader,limit=1] kills >= pointsToWin gm_options run function game:ffa/endgame
