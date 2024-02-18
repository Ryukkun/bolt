#called as a bat to tp it to its home
# killstreak:setup/bat | killstreak:main
# @s = bat not tpped

execute at @e[type=armor_stand,tag=has_bat] if score @s ks_batId = @e[type=armor_stand,tag=has_bat,distance=..1,sort=nearest,limit=1] ks_batId run tp ~ ~1.8 ~
tag @s remove tp
