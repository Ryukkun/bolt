# called to tp people to the correct map
# map:tp | called by game:pre-init

#run map setup (non ffa)
execute if score map cm_main matches 0 unless score gameMode cm_main matches 2 run tp @a 203 29 -43
execute if score map cm_main matches 1 unless score gameMode cm_main matches 2 run tp @a 312 33 -46
execute if score map cm_main matches 2 unless score gameMode cm_main matches 2 run tp @a 433 30 -42
execute if score map cm_main matches 3 unless score gameMode cm_main matches 2 run tp @a 547 41 -68
execute if score map cm_main matches 4 unless score gameMode cm_main matches 2 run tp @a 1208.50 29 -72.50
execute if score map cm_main matches 5 unless score gameMode cm_main matches 2 run tp @a 1550.5 17 -115.5

#run map set (ffa)
execute if score map cm_main matches 0 if score gameMode cm_main matches 2 run tp @a 781 24 -36
execute if score map cm_main matches 1 if score gameMode cm_main matches 2 run tp @a 968 31 -32
execute if score map cm_main matches 2 if score gameMode cm_main matches 2 run tp @a 661 35 -54

#map ids
#0 mesa, fuji
#1 ice, tomb
#2 warehouse, neon
#3 cavernns, Nether
#4 space
#5 Nation
#6 
