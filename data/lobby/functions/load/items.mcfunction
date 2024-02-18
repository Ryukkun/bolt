# called to setbock any signs that are not used by options
# lobby:load/items | Called from lobby:load_lobby

#kill sreak items
summon item -32 50 -28 {Tags:["lobby_entity","item","honey_trap"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:honey_block",Count:1b},CustomName:'{"text":"Honey Trap","color":"#FFA826","bold":true}',CustomNameVisible:1b}
summon item -36 50 -29 {Tags:["lobby_entity","item","grenade"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:snowball",Count:1b,},CustomName:'{"text":"Ice Grenade","color":"green","bold":true}',CustomNameVisible:1b}
summon item -40 50 -30 {Tags:["lobby_entity","item","quick_bow"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:quick_charge",lvl:1}]}},CustomName:'{"text":"Quick Bow","color":"#a37837","bold":true}',CustomNameVisible:1b}
summon item -45 50 -30 {Tags:["lobby_entity","item","paint_trap"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:light_weighted_pressure_plate",Count:1b},CustomName:'{"text":"Paint Trap","color":"green","bold":true}',CustomNameVisible:1b}
summon item -49 50 -29 {Tags:["lobby_entity","item","extra_life"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:diamond_leggings",Count:1b},CustomName:'{"text":"Extra Life","color":"#2bc2b5","bold":true}',CustomNameVisible:1b}
summon item -53 50 -28 {Tags:["lobby_entity","item","tidal_wave"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:blue_ice",Count:1b},CustomName:'{"text":"Tidal Wave","color":"#b84818","bold":true}',CustomNameVisible:1b}

# freeze tag items
summon item -41 47 -19 {Tags:["lobby_entity","item","anti-freeze"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:blaze_powder",Count:1b},CustomName:'{"text":"Anti-freeze","color":"#db890d","bold":true}',CustomNameVisible:1b}
summon item -44 47 -19 {Tags:["lobby_entity","item","re-freeze"],Age:-32768,PickupDelay:32767,Item:{id:"minecraft:ice",Count:1b},CustomName:'{"text":"Re-freeze","color":"#0e95c2","bold":true}',CustomNameVisible:1b}
