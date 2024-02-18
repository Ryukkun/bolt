# Called when a player has been blowup
# kill_handle:blownup | called by advancement
# @s = player who was blowup
tag @s add blownup
advancement revoke @s only kill_handle:blownup

scoreboard players operation @s kh_killedby = @e[distance=..9,limit=1,sort=nearest,tag=exploded] gm_id

function kill_handle:killed/main
