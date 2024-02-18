scoreboard players reset * lb_display

#base values
scoreboard players set §3Gamemode: lb_display 4
scoreboard players set §r lb_display 2
scoreboard players set §3Map: lb_display 1

#gamemode
execute if score gameMode cm_main matches 0 run scoreboard players set §aCTF lb_display 3
execute if score gameMode cm_main matches 1 run scoreboard players set §3CTP lb_display 3
execute if score gameMode cm_main matches 2 run scoreboard players set §6FFA lb_display 3
execute if score gameMode cm_main matches 3 run scoreboard players set §1Freeze_tag lb_display 3
execute if score gameMode cm_main matches 4 run scoreboard players set §4Deathmatch lb_display 3

#3Map(non ffa)
execute if score map cm_main matches 0 unless score gameMode cm_main matches 2 run scoreboard players set §6Mesa lb_display 0
execute if score map cm_main matches 1 unless score gameMode cm_main matches 2 run scoreboard players set §6Ice lb_display 0
execute if score map cm_main matches 2 unless score gameMode cm_main matches 2 run scoreboard players set §6Warehouse lb_display 0
execute if score map cm_main matches 3 unless score gameMode cm_main matches 2 run scoreboard players set §6Caverns lb_display 0
execute if score map cm_main matches 4 unless score gameMode cm_main matches 2 run scoreboard players set §6Space lb_display 0
execute if score map cm_main matches 5 unless score gameMode cm_main matches 2 run scoreboard players set §6Nation lb_display 0

#Map (ffa)
execute if score map cm_main matches 0 if score gameMode cm_main matches 2 run scoreboard players set §6Fuji lb_display 0
execute if score map cm_main matches 1 if score gameMode cm_main matches 2 run scoreboard players set §6Tomb lb_display 0
execute if score map cm_main matches 2 if score gameMode cm_main matches 2 run scoreboard players set §6Neon lb_display 0
#execute if score map cm_main matches 3 if score gameMode cm_main matches 2 run scoreboard players set §6Neather lb_display 0

execute if score map cm_main matches -1 run scoreboard players set §6Random lb_display 0