# called the tick before a ice_grenade blows up
# killstreak:remove/ice_grenade_first | killstreak:action/ice_grenade
# @s = ice_grenade

summon creeper 0 10 0 {NoGravity:1b,Silent:1b,ExplosionRadius:4b,Fuse:2,ignited:1b,PersistenceRequired:1b,Tags:["ks_grenade","ks_selected"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2,ShowParticles:0b}]}
execute as @e[type=creeper,tag=ks_grenade,tag=ks_selected] store result score @s ks_creeperId run scoreboard players add $id ks_creeperId 1
scoreboard players operation @s ks_creeperId = $id ks_creeperId

tag @e[type=creeper,tag=ks_selected] remove ks_selected
