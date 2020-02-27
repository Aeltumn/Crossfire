execute if entity @s[scores={map=0}] run tellraw @a[scores={map=0}] ["",{"selector":"@s"},{"text":" tried to swim.."}]
execute if entity @s[scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@s"},{"text":" tried to swim.."}]
clear @s minecraft:leather_chestplate
clear @s minecraft:leather_leggings
clear @s minecraft:leather_boots
tag @s add waterdead
tag @s add spectating
tag @s add died
effect give @s minecraft:levitation 1000000 255 true
effect give @s minecraft:invisibility 1000000 255 true
scoreboard players remove @s roundKills 1
execute if entity @s[team=red] run scoreboard players remove @s Red 1
execute if entity @s[team=yellow] run scoreboard players remove @s Yellow 1
execute if entity @s[team=green] run scoreboard players remove @s Green 1
execute if entity @s[team=blue] run scoreboard players remove @s Blue 1
execute if entity @s[team=magenta] run scoreboard players remove @s Magenta 1
execute if entity @s[team=orange] run scoreboard players remove @s Orange 1
title @s actionbar {"text":"A kill has been taken away because you fell in the water.","color":"red"}
playsound minecraft:entity.generic.splash master @s ~ ~ ~ 2 1