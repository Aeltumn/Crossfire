scoreboard objectives add gametimer dummy
scoreboard objectives add starttimer dummy
scoreboard objectives add started dummy
scoreboard objectives add playerscore dummy
scoreboard objectives add joined dummy
scoreboard objectives add age dummy
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow

difficulty peaceful

# Kick everyone out of spectator target
execute as @a[tag=spectating] run spectate @s

tag @a remove died
tag @a remove joined
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

tp @a[tag=!admin] 326.5 23 249.5

bossbar set crossfire:timer players

kill @e[tag=cleanup]

function crossfire:remove_kill_tag

scoreboard players set gametimer gametimer -1
scoreboard players set starttimer starttimer -1
scoreboard players set started started 0
scoreboard players set playerscore player 0
scoreboard players set joined joined 0

team add red
team add yellow
team add green
team add blue

team empty blue
team empty red
team empty yellow
team empty green

scoreboard players set @e[tag=playerscore] player 0