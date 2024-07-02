#> kill_handle:killed/freeze/other
# otherのキルログ表示 + kill数
# as = killしたプレイヤー , at = killされたプレイヤー[tag=arrow_kill]

tellraw @a [{"selector":"@s"},{"text":" froze ","color":"aqua"},{"selector":"@p[tag=arrow_kill,distance=0]"}]
scoreboard players add @s kills 1