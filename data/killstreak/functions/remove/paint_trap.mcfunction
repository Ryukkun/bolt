# called as a honey trap which life has come to an end
# killstreak:remove/honey_trap | killstreak:actions/honey_trap
# @s = honey trap

tag @s remove ks_blowup

execute as @e[type=bat,tag=honey_trap] if score @s ks_batId = @e[type=armor_stand,tag=honey_trap,distance=..1,sort=nearest,limit=1] ks_batId run tp @s ~ -100 ~

#blow up
summon creeper ~ ~2 ~ {NoGravity:1b,Silent:1b,ExplosionRadius:4b,Fuse:0,ignited:1b}
data merge entity @s {ArmorItems:[{},{},{},{}]}
tag @s add exploded
tag @s add ks_decay

scoreboard players reset @s ks_decay

#save bats
execute as @e[type=bat,tag=ks_life] run data merge entity @s {Invulnerable:1b}
