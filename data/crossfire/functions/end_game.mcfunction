tp @a[tag=!admin] 328.5 23 249.5 90 0
bossbar set crossfire:timer players

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
scoreboard players set @e[tag=playerscore] player 0

tag @a remove joined

scoreboard players set Red kills 0
scoreboard players set Yellow kills 0
scoreboard players set Blue kills 0
scoreboard players set Green kills 0
scoreboard players operation Red kills += @a[team=red] roundKills
scoreboard players operation Yellow kills += @a[team=yellow] roundKills
scoreboard players operation Blue kills += @a[team=blue] roundKills
scoreboard players operation Green kills += @a[team=green] roundKills

execute as @a run scoreboard players operation @s kills += @s roundKills
scoreboard players set @a roundKills 0

team empty blue
team empty red
team empty yellow
team empty green

execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run say Red won!
execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run say Blue won!
execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run say Yellow won!
execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run say Green won!

scoreboard players set started started 0
scoreboard players set joined joined 0
scoreboard players set playerscore player 0
clear @a[tag=!admin]
gamerule sendCommandFeedback false
gamemode adventure @a[tag=!admin]
gamerule sendCommandFeedback true