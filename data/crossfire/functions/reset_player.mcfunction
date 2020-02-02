# Kick everyone out of spectator target
execute as @s[tag=spectating] run spectate

# Cleanup
kill @e[tag=cleanup]

# Remove tags
tag @s remove player1
tag @s remove player2
tag @s remove player3
tag @s remove player4
tag @s remove player5
tag @s remove player6
tag @s remove player7
tag @s remove player8
tag @s remove player9
tag @s remove player10
tag @s remove player11
tag @s remove selected
tag @s remove waterdead
tag @s remove died
tag @s remove joined
tag @s remove spectating
tag @s remove spectateplayer1
tag @s remove spectateplayer2
tag @s remove spectateplayer3
tag @s remove spectateplayer4
tag @s remove spectateplayer5
tag @s remove spectateplayer6
tag @s remove spectateplayer7
tag @s remove spectateplayer8
tag @s remove spectateplayer9
tag @s remove spectateplayer10
tag @s remove spectateplayer11
tag @s remove hit
tag @s remove givecrossbow
tag @s remove reloadcrossbow

# Fix wins
scoreboard players add @s wins 0

# Fix timer
scoreboard players reset @s timer

# Teleport people back
gamerule sendCommandFeedback false
gamemode adventure @s[tag=!admin]
gamerule sendCommandFeedback true
clear @s[tag=!admin] #crossfire:obtainableitems
function crossfire:give_armor
effect clear @s[tag=!admin]
execute if score postgametimer postgametimer matches -1 run tp @s[tag=!admin] 461.5 35 150.5 90 0
execute unless score postgametimer postgametimer matches -1 run tp @s[tag=!admin] 397.5 23 150.5 -90 0
team join lobby @s

# Quality of life!
effect give @s[tag=!admin] minecraft:instant_health 1 20 true
effect give @s[tag=!admin] minecraft:jump_boost 1000000 1 true
effect give @s[tag=!admin] minecraft:speed 1000000 0 true
effect give @s[tag=!admin] minecraft:weakness 1000000 255 true
