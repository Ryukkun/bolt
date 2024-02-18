#called to get help about the corss bow
# lobby:signs/help/items/cross_bow | called by help sign

tellraw @s {"text":"\n\n\n\nQuick Bow\n","color":"gold","bold":true,"underlined":true}
tellraw @s {"text":"[Shoot to use] ","color":"dark_green"}
tellraw @s {"text":"This weapon is a buffed crossbow that shoots arrows in quick succession. Good at clearing out a room at close range.","color":"aqua"}
tellraw @s [{"text":"Kills required: ","color":"dark_green","bold":true},{"text":"5\n","color":"gold"}]
