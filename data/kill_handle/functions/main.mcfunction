# Hanndles all arrow and kill detection
# kill_handle:main | called from main:phases/in_game

#kill arrow
kill @e[type=arrow,nbt={inGround:1b}]

# -- 矢を打ったプレイヤー・打たれたプレイヤーの処理は 実績で処理 --

#handle respawning
execute as @a[tag=dead] run function kill_handle:respawn/main
