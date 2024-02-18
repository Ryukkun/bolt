#called when a capture gamemode is selected to cycle max game time
# lobby:options/option/7/capture | called from loby:options/option/7/main


execute if score maxGameTime gm_options matches -1 run scoreboard players set maxGameTime gm_options -10
execute if score maxGameTime gm_options matches 54000 run scoreboard players set maxGameTime gm_options -1
execute if score maxGameTime gm_options matches 36000 run scoreboard players set maxGameTime gm_options 54000
execute if score maxGameTime gm_options matches 24000 run scoreboard players set maxGameTime gm_options 36000
execute if score maxGameTime gm_options matches 18000 run scoreboard players set maxGameTime gm_options 24000
execute if score maxGameTime gm_options matches 12000 run scoreboard players set maxGameTime gm_options 18000

execute if score maxGameTime gm_options matches -10 run scoreboard players set maxGameTime gm_options 12000

function lobby:options/sign/7/update

# 1200 - 1min

# 12000 - 15 mins
# 18000 - 15 mins
# 24000 - 20 mins
# 36000 - 30 mins
# 54000 - 45 mins
# -1 - no limit
