# called to generate a list of all the testers that have helped test
# lobby:signs/credits/testers
tellraw @s {"text":"\n\n\n\nTesters:\n","color":"gold","bold":true,"underlined":true}
tellraw @s ["",{"text":"OGs: ","color":"aqua"},{"storage": "lobby:lists","nbt": "Testers.og","interpret": true}]
tellraw @s ["",{"text":"New: ","color":"aqua"},{"storage": "lobby:lists","nbt": "Testers.new","interpret": true},"\n"]