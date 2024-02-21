execute if score $collisionRule fox_settings matches 1 run team modify 1blue collisionRule pushOwnTeam
execute if score $collisionRule fox_settings matches 1 run team modify 2frozen_blue collisionRule pushOwnTeam
execute if score $collisionRule fox_settings matches 1 run team modify 3red collisionRule pushOwnTeam
execute if score $collisionRule fox_settings matches 1 run team modify 4frozen_red collisionRule pushOwnTeam

execute unless score $collisionRule fox_settings matches 1 run team modify 1blue collisionRule never
execute unless score $collisionRule fox_settings matches 1 run team modify 2frozen_blue collisionRule never
execute unless score $collisionRule fox_settings matches 1 run team modify 3red collisionRule never
execute unless score $collisionRule fox_settings matches 1 run team modify 4frozen_red collisionRule never