effect clear @s
gamerule sendCommandFeedback false
gamemode adventure @s
gamerule sendCommandFeedback true
clear @s #crossfire:obtainableitems

effect give @s minecraft:resistance 1000000 255 true
effect give @s minecraft:saturation 1000000 255 true
effect give @s minecraft:jump_boost 1000000 1 true
effect give @s minecraft:instant_health 1 20 true

scoreboard players set @s deadtimer 6
scoreboard players reset @s enabledtimer
scoreboard players reset @s timer

tp @s[team=blue] 397.5 27 124.5 0 0
tp @s[team=yellow] 423.5 27 150.5 90 0
tp @s[team=green] 397.5 27 176.5 -180 0
tp @s[team=red] 371.5 27 150.5 -90 0