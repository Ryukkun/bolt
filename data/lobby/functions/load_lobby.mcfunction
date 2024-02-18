# Called to kill off all lobby entities and replace them, will also update any signs
# lobby:load_lobby | called from game:endgame

#kill all entities
kill @e[tag=lobby_entity,type=!player]

#summon area effect clouds
function lobby:load/area_effect_clouds

#summon stands
function lobby:load/armour_stands

#sumon items
function lobby:load/items

#regenerate signs
function lobby:load/signs/main
function lobby:options/sign/update_all

function lobby:load/other_signs

#side bar
function lobby:update_sidebar

#map selection
function lobby:options/option/map/update_structure

#reset start
execute at @e[type=armor_stand,tag=sign,tag=start] run setblock ~ ~ ~ stone_button[facing=east,powered=false,face=floor]


