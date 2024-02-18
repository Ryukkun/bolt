# called as a honey trap which life has come to an end
# killstreak:remove/honey_trap | killstreak:actions/honey_trap
# @s = honey trap

execute as @e[type=bat,tag=honey_trap] if score @s ks_batId = @e[type=armor_stand,tag=honey_trap,distance=..1,sort=nearest,limit=1] ks_batId run tp @s ~ -100 ~
kill @s
