# キャプチャー系統のゲームモードの時のみ実行
# lobby:options/option/5/capture | called by lobby:options/option/5/main
# @s = player (trigger of 5)

scoreboard players add ks_pointDropping gm_options 1
execute if score ks_pointDropping gm_options matches 2.. run scoreboard players set ks_pointDropping gm_options 0