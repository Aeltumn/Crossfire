effect clear @s
gamerule sendCommandFeedback false
gamemode adventure @s
gamerule sendCommandFeedback true
clear @s

effect give @s minecraft:resistance 1000000 255 true
effect give @s minecraft:saturation 1000000 255 true
effect give @s minecraft:jump_boost 1000000 1 true
effect give @s minecraft:instant_health 1 20 true

scoreboard players set @s deadtimer 6
scoreboard players reset @s enabledtimer
scoreboard players reset @s timer

# Map 1 - Large
execute if score map map matches 1 run tp @s[team=blue] 272 24 249 -90 0
execute if score map map matches 1 run tp @s[team=yellow] 423.5 27 150.5 90 0
execute if score map map matches 1 run tp @s[team=green] 397.5 27 176.5 -180 0
execute if score map map matches 1 run tp @s[team=red] 371.5 27 150.5 -90 0

# Map 0 - Default
execute if score map map matches 0 run tp @s[team=blue] 397.5 27 124.5 0 0
execute if score map map matches 0 run tp @s[team=yellow] 290 24 267 180 0
execute if score map map matches 0 run tp @s[team=green] 308 24 249 90 0
execute if score map map matches 0 run tp @s[team=red] 290 24 231 0 0