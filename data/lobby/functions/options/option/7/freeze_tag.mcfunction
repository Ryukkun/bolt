#called when freeze tag is selected to cycle max game time
# lobby:options/option/7/freeze_tag | called from loby:options/option/7/main

execute if score maxGameTime gm_options matches -1 run scoreboard players set maxGameTime gm_options -10
execute if score maxGameTime gm_options matches 12000 run scoreboard players set maxGameTime gm_options -1
execute if score maxGameTime gm_options matches 6000 run scoreboard players set maxGameTime gm_options 12000
execute if score maxGameTime gm_options matches 3600 run scoreboard players set maxGameTime gm_options 6000

execute if score maxGameTime gm_options matches -10 run scoreboard players set maxGameTime gm_options 3600

function lobby:options/sign/7/update

# 1200 - 1min

# 3600 - 3 mins
# 6000 - 5 mins
# 12000 - 10 mins
# -1 - no limit
