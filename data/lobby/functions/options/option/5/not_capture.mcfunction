# キャプチャー系統以外のゲームモードの時のみ実行
# lobby:options/option/5/not_capture | called by lobby:options/option/5/main
# @s = player (trigger of 5)

scoreboard players add $arrowMode fox_settings 1
execute if score $arrowMode fox_settings matches 2.. run scoreboard players set $arrowMode fox_settings 0