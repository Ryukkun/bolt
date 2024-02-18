# Load function, called on every reload to add scoreboard and set things up
# main:load | called by minecraft:load

### --- Scoreboards --- ###
# FFA
scoreboard objectives add ffa_bowShot minecraft.used:minecraft.bow
scoreboard objectives add ffa_crossShot minecraft.used:minecraft.crossbow

scoreboard objectives add ffa_leaders dummy
scoreboard objectives add ffa_spawnWeight dummy
scoreboard objectives add ffa_invincible dummy

# Freeze Tag
scoreboard objectives add ft_defrosting dummy
scoreboard objectives add ft_wins dummy
scoreboard objectives add ft_autoFreeze dummy

# CTP
scoreboard objectives add ctp_pointHealth dummy
scoreboard objectives add ctp_showHealth dummy {"text":"Team Health %","color":"gold"}
scoreboard objectives add ctp_cooldown dummy

# CTF
scoreboard objectives add ctf_flagsCapped dummy
scoreboard objectives add ctf_showCaps dummy {"text":"Flags Captured","color":"gold"}

# TDM
scoreboard objectives add tdm_kills dummy

#Kill handling
scoreboard objectives add kh_arrowId dummy
scoreboard objectives add kh_respawnTime dummy
scoreboard objectives add kh_mathTacking dummy
scoreboard objectives add kh_killedby dummy

# Kill streak
scoreboard objectives add ks_snowballId dummy
scoreboard objectives add ks_batId dummy
scoreboard objectives add ks_creeperId dummy
scoreboard objectives add ks_decay dummy

# Lobby
scoreboard objectives add lb_optionTrig trigger
scoreboard objectives add lb_coreTrig trigger
scoreboard objectives add lb_display dummy {"text":"Bolt","color":"gold"}
scoreboard objectives setdisplay sidebar lb_display
scoreboard objectives add lb_options dummy
scoreboard objectives add lb_sneaking minecraft.custom:minecraft.sneak_time

scoreboard objectives add pk_checkpoint dummy
scoreboard objectives add pk_time dummy
scoreboard objectives add pk_time_total dummy
scoreboard objectives add pk_math dummy

scoreboard objectives add pk_reset minecraft.dropped:minecraft.red_terracotta
scoreboard objectives add pk_return minecraft.dropped:minecraft.lime_terracotta

# Game mechanics
scoreboard objectives add gm_options dummy
scoreboard objectives add gm_id dummy
scoreboard objectives add gm_inGame dummy
scoreboard objectives add gm_main dummy
scoreboard objectives add gm_team dummy
scoreboard objectives add gm_killMaths dummy

scoreboard objectives add item_cooldown dummy

#core mechanics
scoreboard objectives add cm_hunger food
scoreboard objectives add cm_leaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add cm_main dummy
scoreboard objectives add cm_miscellaneous dummy

#other
scoreboard objectives add kills dummy
scoreboard objectives add killStreak dummy

#stats
scoreboard objectives add wins dummy
scoreboard objectives add gamesplayed dummy

scoreboard objectives add gst_arrows_shot dummy
scoreboard objectives add gst_bow_used minecraft.used:minecraft.bow
scoreboard objectives add gst_cross_used minecraft.used:minecraft.crossbow
scoreboard objectives add gst_grenades minecraft.used:minecraft.snowball
scoreboard objectives add gst_death_count dummy
scoreboard objectives add gst_points dummy


### --- Teams --- ###
team add 0ffa_leader {"text": "FFA Lead Kills"}
team add 1ffa {"text": "FFA Player"}

team add 1blue {"text": "Team Blue"}
team add 2frozen_blue {"text": "Team Blue Frozen"}
team add 3red {"text": "Team Red"}
team add 4frozen_red {"text": "Team Red Frozen"}

team add 0gfd_creator {"text": "Vertex Creator"}
team add 1creator {"text": "Creator"}
team add 2gfd {"text": "Vertex Member"}
team add 3heart {"text": "Specail"}

team add 8lobby {"text": "Lobby"}
team add 9spectator {"text": "Spectator"}

#Team options
team modify 1blue color blue
team modify 1blue friendlyFire false
team modify 1blue collisionRule never
team modify 1blue seeFriendlyInvisibles false

team modify 3red color red
team modify 3red friendlyFire false
team modify 3red collisionRule never
team modify 3red seeFriendlyInvisibles false

team modify 2frozen_blue color dark_blue
team modify 2frozen_blue collisionRule never
team modify 2frozen_blue seeFriendlyInvisibles false
team modify 2frozen_blue prefix {"text": "Frozen ", "color": "dark_aqua"}

team modify 4frozen_red color dark_red
team modify 4frozen_red collisionRule never
team modify 4frozen_red seeFriendlyInvisibles false
team modify 4frozen_red prefix {"text": "Frozen ", "color": "dark_aqua"}

team modify 1ffa color gold
team modify 1ffa friendlyFire true
team modify 1ffa collisionRule never
team modify 1ffa seeFriendlyInvisibles false

team modify 0ffa_leader color gold
team modify 0ffa_leader friendlyFire true
team modify 0ffa_leader collisionRule never
team modify 0ffa_leader seeFriendlyInvisibles false
team modify 0ffa_leader prefix {"text":"⭐ ","color":"yellow"}

team modify 0gfd_creator color gold
team modify 0gfd_creator prefix [{"text":"⭐ ","color":"green"},{"text":"GFD ", "color":"red"}]
team modify 0gfd_creator collisionRule never
team modify 0gfd_creator seeFriendlyInvisibles false

team modify 1creator color gold
team modify 1creator prefix {"text":"⭐ ","color":"green"}
team modify 1creator collisionRule never
team modify 1creator seeFriendlyInvisibles false

team modify 2gfd color gray
team modify 2gfd prefix {"text":"GFD ", "color":"red"}
team modify 2gfd collisionRule never
team modify 2gfd seeFriendlyInvisibles false

team modify 3heart prefix {"text":"❤ ","color":"red"}
team modify 3heart color gray
team modify 3heart collisionRule never
team modify 3heart seeFriendlyInvisibles false

team modify 8lobby color gray
team modify 8lobby collisionRule never
team modify 8lobby seeFriendlyInvisibles false

team modify 9spectator color dark_gray

### --- Boss Bars --- ###
bossbar add gm:round_time {"text": "You have x mins left"}
bossbar add ffa:leader {"text":"Leader"}
bossbar add gm:red {"text": "Red Team"}
bossbar add gm:blue {"text": "Blue Team"}
bossbar add lb:title "title"

bossbar set lb:title name ["",{"text":"GFD Presents: ","bold":true, "color":"#b52828"},{"text":"Bolt, ","color":"gold"},{"text": "the fast paced bow combat game!","color":"green"}]
bossbar set lb:title max 1
bossbar set lb:title value 1
bossbar set lb:title color yellow

bossbar set ffa:leader color yellow
bossbar set gm:red color red
bossbar set gm:blue color blue

bossbar set gm:red style notched_6
bossbar set gm:blue style notched_6


##### SETUP #########
execute unless score setup cm_miscellaneous matches 1.. run function main:setup

### --- Scores --- ###
scoreboard players set #second cm_miscellaneous 20
scoreboard players set #minute cm_miscellaneous 1200
scoreboard players set $multiplier ctp_pointHealth 100

scoreboard players add gameState cm_main 0
scoreboard players add map cm_main 0
scoreboard players add gameMode cm_main 0

scoreboard players set teamMapCount cm_main 6
scoreboard players set ffaMapCount cm_main 3

scoreboard players add $players gm_id 0
scoreboard players add $arrows kh_arrowId 0
scoreboard players add $snowball ks_snowballId 0
scoreboard players add $id ks_batId 0
scoreboard players add $id ks_creeperId 0

scoreboard players set options_frozen lb_options 0
scoreboard players set teamJoining lb_options 1

scoreboard players add $checkpoints pk_checkpoint 0
scoreboard players set $minute pk_math 1200
scoreboard players set $second pk_math 20
scoreboard players set $const pk_math 100

#Update Functions
function lobby:load_lobby

#reload message
tellraw @a ["",{"text":"Reload Functions","bold":true,"color":"#008FB3"}]
