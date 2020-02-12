effect clear @s
gamerule sendCommandFeedback false
gamemode adventure @s
gamerule sendCommandFeedback true
clear @s[tag=!admin] #crossfire:obtainableitems
tag @s add givecrossbow
execute if score starttimer starttimer matches ..0 run tag @s add reloadcrossbow
function crossfire:give_armor

effect give @s minecraft:resistance 1000000 255 true
effect give @s minecraft:saturation 1000000 255 true
effect give @s minecraft:jump_boost 1000000 1 true
effect give @s minecraft:instant_health 1 20 true
effect give @s minecraft:weakness 1000000 255 true

scoreboard players set @s deadtimer 6
scoreboard players set @s isreloading 0
scoreboard players set @s timer 0

tp @s[team=blue] 397.5 27 124.5 0 0
tp @s[team=yellow] 423.5 27 150.5 90 0
tp @s[team=green] 529 71 275 0 0
tp @s[team=red] 529 71 317 180 0
tp @s[team=magenta] 529.5 71 317.0 180 0
tp @s[team=orange] 529.5 71 276.0 0 0