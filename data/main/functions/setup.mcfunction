#called on first load to setup scores signs and entities
# main:setup | called by main:load

scoreboard players reset *

scoreboard players set gameState cm_main 0
scoreboard players set map cm_main 0
scoreboard players set gameMode cm_main 0

scoreboard players add $players gm_id 0
scoreboard players add $arrows kh_arrowId 0
scoreboard players add $snowball ks_snowballId 0

scoreboard objectives setdisplay sidebar lb_display

bossbar set gm:red visible false
bossbar set gm:blue visible false
bossbar set ffa:leader visible false

data merge storage lobby:map_minis {Saved:{Team:["map:mini/mesa","map:mini/ice","map:mini/warehouse","map:mini/caverns","map:mini/space","map:mini/nation"],FFA:["map:mini/fuji","map:mini/tomb","map:mini/neon"]}}
data merge storage lobby:map_names {Saved:{Team:["Mesa","Ice","Warehouse","Caverns","Space","Nation"],FFA:["Fuji","Tomb","Neon"]}}

data modify storage lobby:map_minis FFA set from storage lobby:map_minis Saved.FFA
data modify storage lobby:map_names FFA set from storage lobby:map_names Saved.FFA
data modify storage lobby:map_minis Team set from storage lobby:map_minis Saved.Team
data modify storage lobby:map_names Team set from storage lobby:map_names Saved.Team

data modify storage lobby:saved_options CTF set value {id:0,name:{Text2:'{"text":"Capture the","bold":true,"color":"green"}',Text3:'{"text":"Flag","bold":true,"color":"green"}'},RespawnTime:3,PointsToWin:3,KeepTeams:1,Nametags:0,PointDropping:0,tabBoard:0,gameTime:-1,killstreaks:1}
data modify storage lobby:saved_options CTP set value {id:1,name:{Text2:'{"text":"Capture the","bold":true,"color":"dark_aqua"}',Text3:'{"text":"Point","bold":true,"color":"dark_aqua"}'},RespawnTime:3,PointsToWin:100,KeepTeams:1,Nametags:0,PointDropping:0,tabBoard:0,gameTime:-1,killstreaks:1}
data modify storage lobby:saved_options FFA set value {id:2,name:{Text2:'{"text":"Free for","bold":true,"color":"gold"}',Text3:'{"text":"all","bold":true,"color":"gold"}'},RespawnTime:3,PointsToWin:15,Nametags:0,tabBoard:0,gameTime:-1,killstreaks:1}
data modify storage lobby:saved_options FreezeTag set value {id:3,name:{Text2:'{"text":"Freeze","bold":true,"color":"dark_blue"}',Text3:'{"text":"Tag","bold":true,"color":"dark_blue"}'},PointsToWin:5,KeepTeams:1,Nametags:0,gameTime:-1}
data modify storage lobby:saved_options TDM set value {id:4,name:{Text2:'{"text":"Team Death","bold":true,"color":"dark_red"}',Text3:'{"text":"Match","bold":true,"color":"dark_red"}'},RespawnTime:3,PointsToWin:20,KeepTeams:1,Nametags:0,tabBoard:0,gameTime:-1,killstreaks:1}

data modify storage lobby:saved_options current set from storage lobby:saved_options CTF

data remove storage kh:uuids players
data modify storage lobby:map_minis Selected.FFA set value 0
data modify storage lobby:map_minis Selected.Team set value 0

function lobby:options/option/gamemode/storage/load
function lobby:load_lobby
function lobby:parkour/init

scoreboard objectives setdisplay sidebar kills

scoreboard players add setup cm_miscellaneous 1


tellraw @a ["",{"text":"Setup bolt datapack","bold":true,"color":"#008FB3"}]
