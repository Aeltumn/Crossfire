tellraw @a ["",{"selector":"@s"},{"text":" tried to swim.."}]
gamemode spectator @s
tag @s add waterdead
tag @s add spectating
tag @s add died
scoreboard players remove @s kills 1
scoreboard players remove @s roundKills 1
title @s actionbar {"text":"A kill has been taken away because you fell in the water.","color":"aqua"}