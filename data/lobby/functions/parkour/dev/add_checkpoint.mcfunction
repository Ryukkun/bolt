#called by kruthers to add a checkpoint in

execute align xyz run summon area_effect_cloud ~.5 ~ ~.5 {Tags:["remain","parkour","checkpoint","no_score"],Duration:2147483647}
execute as @e[type=area_effect_cloud,distance=..1,tag=parkour,tag=checkpoint,tag=no_score] store result score @s pk_checkpoint run scoreboard players add $checkpoints pk_checkpoint 1
tag @e[type=area_effect_cloud,tag=parkour,tag=checkpoint] remove no_score
tellraw @s [{"text":"Added a new checkpoint at position: "},{"score": {"name":"$checkpoints","objective": "pk_checkpoint"}}]
