#called at anyone doing the parkour to track them and there progress
# lobby:parkour/in_parkour | called by lobby:parkour/main

tag @s add in_parkour

#increase there time
scoreboard players add @s pk_time 1
scoreboard players add @s pk_time_total 1

#handeling reseting
execute if score @s pk_reset matches 1.. run function lobby:parkour/reset
execute if score @s pk_return matches 1.. run function lobby:parkour/return

execute if score @s pk_checkpoint matches 2.. if block ~ ~-1 ~ cyan_terracotta run function lobby:parkour/return

# Calculate there current time
scoreboard players operation mins_total pk_math = @s pk_time_total
scoreboard players operation mins_total pk_math /= $minute pk_math

scoreboard players operation secs_total pk_math = @s pk_time_total
scoreboard players operation secs_total pk_math %= $minute pk_math
scoreboard players operation secs_total pk_math /= $second pk_math

scoreboard players operation ms_total pk_math = @s pk_time_total
scoreboard players operation ms_total pk_math %= $minute pk_math
scoreboard players operation ms_total pk_math %= $second pk_math
scoreboard players operation ms_total pk_math *= $const pk_math
scoreboard players operation ms_total pk_math /= $second pk_math

scoreboard players operation mins_split pk_math = @s pk_time
scoreboard players operation mins_split pk_math /= $minute pk_math

scoreboard players operation secs_split pk_math = @s pk_time
scoreboard players operation secs_split pk_math %= $minute pk_math
scoreboard players operation secs_split pk_math /= $second pk_math

scoreboard players operation ms_split pk_math = @s pk_time
scoreboard players operation ms_split pk_math %= $minute pk_math
scoreboard players operation ms_split pk_math %= $second pk_math
scoreboard players operation ms_split pk_math *= $const pk_math
scoreboard players operation ms_split pk_math /= $second pk_math

title @s actionbar ["",{"text":"Overall time: ","color":"gold"},{"score":{"name":"mins_total","objective":"pk_math"},"color":"green"},{"text":":"},{"score":{"name":"secs_total","objective":"pk_math"},"color":"green"},{"text":"."},{"score":{"name":"ms_total","objective":"pk_math"},"color":"green"},{"text":" Current Section: ","color":"gold"},{"score":{"name":"mins_split","objective":"pk_math"},"color":"green"},{"text":":"},{"score":{"name":"secs_split","objective":"pk_math"},"color":"green"},{"text":"."},{"score":{"name":"ms_split","objective":"pk_math"},"color":"green"}]

#reset and return times
replaceitem entity @s hotbar.3 lime_terracotta{display:{Name:'{"text":"[Drop] Return To Last Checkpoint","color":"dark_green","bold":true}',Lore:['{"text":"Drop to return to the last checkpoint"}']},ParkourItem:1,Enchantments:[{}]}
replaceitem entity @s hotbar.5 red_terracotta{display:{Name:'{"text":"[Drop] Reset Progress","color":"dark_red","bold":true}',Lore:['{"text":"Drop to return to the start and reset your timer."}']},ParkourItem:1,Enchantments:[{}]}
