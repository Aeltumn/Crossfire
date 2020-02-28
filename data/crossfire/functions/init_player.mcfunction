# Teleport to the spawn location
tp @s[team=blue] 550.0 71 421.5 90 0
tp @s[team=yellow] 509.0 71 421.5 -90 0
tp @s[team=green] 529.5 71 401.0 0 0
tp @s[team=red] 529.5 71 442.0 180 0
tp @s[team=magenta] 529.5 71 317.0 180 0
tp @s[team=orange] 529.5 71 276.0 0 0

# Fix attributes
effect clear @s
gamerule sendCommandFeedback false
gamemode adventure @s
gamerule sendCommandFeedback true
clear @s[tag=!admin] #crossfire:obtainableitems
tag @s add givecrossbow
execute if score started0 started matches 1 if score starttimer0 starttimer matches ..0 run tag @s add reloadcrossbow
execute if score started1 started matches 1 if score starttimer1 starttimer matches ..0 run tag @s add reloadcrossbow
function crossfire:give_armor

# Give game effects
effect give @s minecraft:resistance 1000000 255 true
effect give @s minecraft:saturation 1000000 255 true
effect give @s minecraft:jump_boost 1000000 1 true
effect give @s minecraft:instant_health 1 20 true
effect give @s minecraft:weakness 1000000 255 true

# Set your scoreboard values properly
scoreboard players set @s deadtimer 6
scoreboard players set @s isreloading 0
scoreboard players set @s timer 0