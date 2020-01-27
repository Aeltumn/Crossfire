tp @a 328 23 248 90 0
bossbar set crossfire:timer players

tag @a[tag=player1] remove player1
tag @a[tag=player2] remove player2
tag @a[tag=player3] remove player3
tag @a[tag=player4] remove player4
tag @a[tag=player5] remove player5
tag @a[tag=player6] remove player6
tag @a[tag=player7] remove player7
tag @a[tag=player8] remove player8
tag @a[tag=player9] remove player9
tag @a[tag=player10] remove player10
tag @a[tag=player11] remove player11
tag @a[tag=selected] remove selected
scoreboard players set @e[tag=playerscore] player 0

tag @a remove joined

scoreboard players set Red kills 0
scoreboard players set Yellow kills 0
scoreboard players set Blue kills 0
scoreboard players set Green kills 0
scoreboard players operation Red kills += @a[team=red] kills
scoreboard players operation Yellow kills += @a[team=yellow] kills
scoreboard players operation Blue kills += @a[team=blue] kills
scoreboard players operation Green kills += @a[team=green] kills

execute as @a run scoreboard players operation @s totalkills += @s kills
scoreboard players set @a kills 0

team empty blue
team empty red
team empty yellow
team empty green

execute if score Red kills >= Blue kills if score Red kills >= Yellow kills if score Red kills >= Green kills run say Red won!
execute if score Blue kills >= Red kills if score Blue kills >= Yellow kills if score Blue kills >= Green kills run say Blue won!
execute if score Yellow kills >= Blue kills if score Yellow kills >= Red kills if score Yellow kills >= Green kills run say Yellow won!
execute if score Green kills >= Red kills if score Green kills >= Yellow kills if score Green kills >= Green kills run say Green won!

scoreboard players set started started 0
scoreboard players set joined joined 0
scoreboard players set playerscore player 0
clear @a
gamemode adventure @a