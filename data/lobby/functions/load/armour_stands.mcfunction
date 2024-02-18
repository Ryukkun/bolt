#called to summon the armour stands, these are used as lables and displays only
# lobby:load/armour_stands | | Called from lobby:load_lobby

# -------- Lables --------- #
# Main pointers
summon armor_stand -2 47 -12 {Tags:["lobby_entity","sign"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Team Selection","color":"#77ff33","bold":true}'}
summon armor_stand 11.7 49.3 0 {Tags:["lobby_entity","sign","option_hinter"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Gamemode and Map Selection","color":"#66ffff","bold":true}'}
summon armor_stand 11.7 49 -8.0 {Tags:["lobby_entity","sign","option_hinter"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"General Options","color":"#66ffff","bold":true}'}
summon armor_stand 11 47.5 7 {Tags:["lobby_entity","sign","start"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Start","color":"gold","bold":true}'}
summon armor_stand -16.5 47.5 -9.5 {Tags:["lobby_entity","sign"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Help & Parkour","color":"#77ff33","bold":true}'}
summon armor_stand -10.8 48.9 2 {Tags:["lobby_entity","sign"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Credits","color":"#77ff33","bold":true}'}

# Sub signs
summon armor_stand 2 46.7 -21 {Tags:["lobby_entity","sign","teamSelection"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Join Red","color":"#ff1a1a"}'}
summon armor_stand -7.5 46.7 -21 {Tags:["lobby_entity","sign","teamSelection"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Join Blue","color":"#3399ff"}'}
summon armor_stand 7 46.7 -13 {Tags:["lobby_entity","sign","teamSelection","spectator"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Join Spectators","color":"#e3e3e3"}'}
summon armor_stand -15 46.7 -14 {Tags:["lobby_entity","sign","teamSelection"],CustomNameVisible:1b,Marker:1,Small:1,Invisible:1,CustomName:'{"text":"Leave Team","color":"#999999"}'}

# -------- Credits --------- #
#Chicken > kruthers > tom
summon minecraft:armor_stand -16.5 57 64.5 {Small:1,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[12f,0f,0f],LeftLeg:[12f,86f,0f],RightLeg:[12f,266f,0f],LeftArm:[334f,18f,0f],RightArm:[303f,353f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1,tag:{display:{color:0}}},{id:"player_head",Count:1,tag:{SkullOwner:"BigNinjaChicken"}}],DisabledSlots:4144959,Rotation:[90f,0f],HandItems:[{id:"snow_block",Count:1},{id:"wooden_axe",Count:1}],Tags:["lobby_entity","playerStand","chicken"]}
summon armor_stand -19.5 57 62.5 {Small:1,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Body:[356f,356f,0f],LeftLeg:[342f,188f,0f],RightLeg:[342f,0f,0f],LeftArm:[336f,342f,0f],RightArm:[293f,360f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{display:{color:3684408}}},{id:"minecraft:leather_leggings",Count:1,tag:{display:{color:3752796}}},{id:"minecraft:leather_chestplate",Count:1,tag:{display:{color:3883494}}},{id:"player_head",Count:1,tag:{SkullOwner:"kruthers"}}],DisabledSlots:4144959,Rotation:[0f,0f],HandItems:[{id:"bow",Count:1},{id:"command_block",Count:1}],Tags:["lobby_entity","playerStand","kruthers"]}
summon minecraft:armor_stand -22.5 57 64.5 {Small:1,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Head:[25f,0f,0f],LeftLeg:[7f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[330f,0f,0f],RightArm:[313f,0f,0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{display:{color:7039849}}},{id:"minecraft:leather_leggings",Count:1,tag:{display:{color:4802125}}},{id:"minecraft:leather_chestplate",Count:1,tag:{display:{color:6908262}}},{id:"player_head",Count:1,tag:{SkullOwner:"hellicar"}}],DisabledSlots:4144959,Rotation:[-90f,0f],HandItems:[{id:"smooth_red_sandstone",Count:1},{id:"bow",Count:1}],Tags:["lobby_entity","playerStand","tom"]}
