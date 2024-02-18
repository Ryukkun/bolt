#called when either ffa or tdm is selected to cycle max game time
# lobby:options/option/7/killing | called from loby:options/option/7/main

execute if score maxGameTime gm_options matches -1 run scoreboard players set maxGameTime gm_options -10
execute if score maxGameTime gm_options matches 36000 run scoreboard players set maxGameTime gm_options -1
execute if score maxGameTime gm_options matches 24000 run scoreboard players set maxGameTime gm_options 36000
execute if score maxGameTime gm_options matches 18000 run scoreboard players set maxGameTime gm_options 24000
execute if score maxGameTime gm_options matches 12000 run scoreboard players set maxGameTime gm_options 18000
execute if score maxGameTime gm_options matches 6000 run scoreboard players set maxGameTime gm_options 12000

execute if score gameMode cm_main matches 2 if score maxGameTime gm_options matches -10 run scoreboard players set maxGameTime gm_options 6000
execute if score gameMode cm_main matches 4 if score maxGameTime gm_options matches -10 run scoreboard players set maxGameTime gm_options 12000


function lobby:options/sign/7/update

# 1200 - 1min

# 6000 - 5 mins
# 12000 - 10 mins
# 18000 - 15 mins
# 24000 - 20 mins
# 36000 - 30 mins
# -1 - no limit
