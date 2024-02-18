#called as a player who has killed to check for kill streak milestones
# killstreak:check_streak | called from kill_handle:killed/add_kill
# @s = player to check
#honey
execute if score @s killStreak matches 2 run function killstreak:streak/level_1
#grenade
execute if score @s killStreak matches 3 run function killstreak:streak/level_2
#crossbow
execute if score @s killStreak matches 5 run function killstreak:streak/level_3
#landmine
execute if score @s killStreak matches 10 run function killstreak:streak/level_4
#armour
execute if score @s killStreak matches 13 run function killstreak:streak/level_5
#kill all
execute if score @s killStreak matches 16 run function killstreak:streak/level_6
