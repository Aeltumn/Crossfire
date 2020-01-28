effect clear @s
gamerule sendCommandFeedback false
gamemode adventure @s
gamerule sendCommandFeedback true
clear @s

effect give @s minecraft:resistance 1000000 255 true
effect give @s minecraft:saturation 1000000 255 true
effect give @s minecraft:jump_boost 1000000 1 true

scoreboard players set @s deadtimer 8
scoreboard players set @s respawnshield 10

tp @s[team=blue] 272 24 249 -90 0
tp @s[team=yellow] 290 24 267 180 0
tp @s[team=green] 308 24 249 90 0
tp @s[team=red] 290 24 231 0 0