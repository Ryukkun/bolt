scoreboard players operation @s gst_arrows_shot = @s gst_bow_used
scoreboard players operation @s gst_arrows_shot += @s gst_cross_used

tellraw @s [{"text":"You got ","color":"aqua"},{"score":{"name":"@s","objective":"kills"},"color":"gold"},{"text":" kills in that game","color":"aqua"}]
tellraw @s [{"text":"You shot ","color":"aqua"},{"score":{"name":"@s","objective":"gst_arrows_shot"},"color":"gold"},{"text":" arrows in that game","color":"aqua"}]
tellraw @s [{"text":"You threw ","color":"aqua"},{"score":{"name":"@s","objective":"gst_grenades"},"color":"gold"},{"text":" grenades in that game","color":"aqua"}]
tellraw @s [{"text":"You died ","color":"aqua"},{"score":{"name":"@s","objective":"gst_death_count"},"color":"gold"},{"text":" times in that game","color":"aqua"}]
tellraw @s [{"text":"You captured ","color":"aqua"},{"score":{"name":"@s","objective":"gst_points"},"color":"gold"},{"text":" flags in that game","color":"aqua"}]
