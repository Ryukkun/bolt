scoreboard players set PlayersInGame gm_main 0
execute if score gameMode cm_main matches 2 as @a[team=!spectate] run scoreboard players add PlayersInGame gm_main 1
execute unless score gameMode cm_main matches 2 if entity @a[team=1blue] run scoreboard players set PlayersInGame gm_main 1
execute unless score gameMode cm_main matches 2 if score PlayersInGame gm_main matches 1 if entity @a[team=3red] run scoreboard players set PlayersInGame gm_main 2

execute if score PlayersInGame gm_main matches ..1 run tellraw @a[distance=..5] {"text":"Not enough players to start!","color":"red","bold":true}
#execute if score PlayersInGame mc_main matches 2.. run tellraw @a [{"selector":"@s","bold":"true"},{"text":" has started the game!","color":"gold","bold":"true"}]
execute if score PlayersInGame gm_main matches 2.. run tellraw @a ["",{"text":"Game countdown has started.","color":"gold","bold":true}]
execute if score PlayersInGame gm_main matches 2.. run function game:start_countdown

#unpower button
setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east,powered=false]
