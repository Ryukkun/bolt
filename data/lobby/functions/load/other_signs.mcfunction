# called to setbock any signs that are not used by options
# lobby:load/signs | | Called from lobby:load_lobby

#random teams
setblock -3 47 -17 oak_wall_sign[facing=south]{Text1:'{"text":"Randomise","color":"dark_aqua","bold":true}',Text2:'{"text":"Teams","color":"dark_aqua","bold":true}',Text4:'{"text":"[click to run]","clickEvent":{"action":"run_command","value":"function lobby:random_teams"}}'}

#credits (in clockwise order
# chicken > kruthers > tom
setblock -18 56 64 oak_wall_sign[facing=west]{Text1:'{"text":"BigNinjaChicken","color":"#ff8c1a","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/chicken"}}',Text3:'{"text":"Lead Build","color":"#4d4dff"}'} destroy
setblock -20 56 63 oak_wall_sign[facing=south]{Text1:'{"text":"kruthers","color":"#1ab2ff","bold":true,"clickEvent":{"action":"run_command","value":"function lobby:signs/credits/kruthers"}}',Text3:'{"text":"Project Lead","color":"#6600ff"}'} destroy
setblock -22 56 64 oak_wall_sign[facing=east]{Text1:'{"text":"hellicar","color":"#40ff00","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/tom"}}',Text3:'{"text":"Lead Build","color":"#4d4dff"}'} destroy

#west - adri > dragon > Qu1nten
setblock -22 56 67 oak_wall_sign[facing=east]{Text1:'{"text":"Asometric","color":"#cc9900","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/asometric"}}',Text3:'{"text":"Builder","color":"#4d4dff"}'} destroy
setblock -22 56 70 oak_wall_sign[facing=east]{Text1:'{"text":"DragonEye3k","color":"#cc9900","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/dragon"}}',Text3:'{"text":"Builder","color":"#4d4dff"}'} destroy
setblock -22 56 73 oak_wall_sign[facing=east]{Text1:'{"text":"Qu1nten","color":"#cc9900","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/qu1nten"}}',Text3:'{"text":"Builder","color":"#4d4dff"}'} destroy

#south - testers > specail
setblock -21 56 75 oak_wall_sign[facing=north]{Text2:'{"text":"Testers","color":"#00ffff","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/testers"}}'} destroy
setblock -19 56 75 oak_wall_sign[facing=north]{Text2:'{"text":"Other Credits","color":"#00ffff","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/special"}}',Text3:'{"text":"& Info","color":"#00ffff"}'} destroy

#east - marhjo > Raptor
setblock -18 56 70 oak_wall_sign[facing=west]{Text1:'{"text":"marhjo","color":"#cc9900","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/marhjo"}}',Text3:'{"text":"Builder","color":"#4d4dff"}'} destroy
setblock -18 56 73 oak_wall_sign[facing=west]{Text1:'{"text":"RaptorMocha","color":"#cc9900","clickEvent":{"action":"run_command","value":"function lobby:signs/credits/raptor"}}',Text3:'{"text":"Builder","color":"#4d4dff"}'} destroy

#help 
setblock -48 46 -16 oak_sign[rotation=14]{Text2:'{"text":"Example Capture","color":"#49469C"}',Text3:'{"text":"Point #1","color":"#49469C"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/capture_point_1"}}'} destroy
setblock -37 46 -16 oak_sign[rotation=2]{Text2:'{"text":"Example Capture","color":"#49469C"}',Text3:'{"text":"Point #2","color":"#49469C"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/capture_point_2"}}'} destroy

setblock -41 46 -18 oak_wall_sign[facing=south]{Text2:'{"text":"Anti Freeze","color":"#B07E45"}',Text3:'{"text":"(Freeze Tag)","color":"#3D3A82"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/anti-freeze"}}'} destroy
setblock -44 46 -18 oak_wall_sign[facing=south]{Text2:'{"text":"Refreeze","color":"#B07E45"}',Text3:'{"text":"(Freeze Tag)","color":"#3D3A82"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/re-freeze"}}'} destroy

setblock -32 49 -27 oak_wall_sign[facing=south]{Text2:'{"text":"Honey Trap","color":"green"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/honey"}}'} destroy
setblock -36 49 -28 oak_wall_sign[facing=south]{Text2:'{"text":"Ice Grenade","color":"green"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/grenade"}}'} destroy
setblock -40 49 -29 oak_wall_sign[facing=south]{Text2:'{"text":"Quick Bow","color":"green"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/cross_bow"}}'} destroy
setblock -45 49 -29 oak_wall_sign[facing=south]{Text2:'{"text":"Paint Trap","color":"green"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/paint_trap"}}'} destroy
setblock -49 49 -28 oak_wall_sign[facing=south]{Text2:'{"text":"Extra Life","color":"green"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/extra_life"}}'} destroy
setblock -53 49 -27 oak_wall_sign[facing=south]{Text2:'{"text":"Tidal Wave","color":"green"}',Text4:'{"text":"[click for info]","clickEvent":{"action":"run_command","value":"function lobby:signs/help/items/tidal_wave"}}'} destroy
