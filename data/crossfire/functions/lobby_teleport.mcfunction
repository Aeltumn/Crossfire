# Kick everyone out of spectator target
execute as @a[tag=spectating] run spectate @s

# Cleanup
kill @e[tag=cleanup]

# Remove tags
tag @a remove player1
tag @a remove player2
tag @a remove player3
tag @a remove player4
tag @a remove player5
tag @a remove player6
tag @a remove player7
tag @a remove player8
tag @a remove player9
tag @a remove player10
tag @a remove player11
tag @a remove selected
tag @a remove waterdead
tag @a remove died
tag @a remove joined
tag @a remove spectating
tag @a remove spectateplayer1
tag @a remove spectateplayer2
tag @a remove spectateplayer3
tag @a remove spectateplayer4
tag @a remove spectateplayer5
tag @a remove spectateplayer6
tag @a remove spectateplayer7
tag @a remove spectateplayer8
tag @a remove spectateplayer9
tag @a remove spectateplayer10
tag @a remove spectateplayer11
tag @a remove hit
tag @a remove crossbowreload

# Empty teams
team empty blue
team empty red
team empty yellow
team empty green

# Teleport people back
gamerule sendCommandFeedback false
gamemode adventure @a[tag=!admin]
gamerule sendCommandFeedback true
clear @a[tag=!admin]
effect clear @a
tp @a[tag=!admin] 328.5 23 249.5 90 0
bossbar set minecraft:timer players

# Quality of life!
effect give @a minecraft:jump_boost 1000000 1 true
effect give @a minecraft:speed 1000000 0 true

# Reset some scoreboard values
scoreboard players set playerscore player 0
scoreboard players set started started 0
scoreboard players set joined joined 0
scoreboard players set gametimer gametimer -1
scoreboard players set starttimer starttimer -1
