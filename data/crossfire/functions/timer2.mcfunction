execute if score gametimer gametimer matches 0.. run execute store result bossbar minecraft:test value run scoreboard players get gametimer gametimer
execute if score gametimer gametimer matches 2.. run bossbar set minecraft:test name ["",{"text":"Game ends in: "},{"score":{"name":"gametimer","objective":"gametimer"},"bold":true,"color":"gold"},{"text":" seconds."}]
execute if score gametimer gametimer matches 1 run bossbar set minecraft:test name ["",{"text":"Game ends in: "},{"score":{"name":"gametimer","objective":"gametimer"},"bold":true,"color":"gold"},{"text":" second."}]
execute if score gametimer gametimer matches 0 run tp @a 328 23 248 90 0
execute if score gametimer gametimer matches 0 run bossbar set minecraft:test players

execute if score gametimer gametimer matches 0 run tag @a[tag=player1] remove player1
execute if score gametimer gametimer matches 0 run tag @a[tag=player2] remove player2
execute if score gametimer gametimer matches 0 run tag @a[tag=player3] remove player3
execute if score gametimer gametimer matches 0 run tag @a[tag=player4] remove player4
execute if score gametimer gametimer matches 0 run tag @a[tag=player5] remove player5
execute if score gametimer gametimer matches 0 run tag @a[tag=player6] remove player6
execute if score gametimer gametimer matches 0 run tag @a[tag=player7] remove player7
execute if score gametimer gametimer matches 0 run tag @a[tag=player8] remove player8
execute if score gametimer gametimer matches 0 run tag @a[tag=player9] remove player9
execute if score gametimer gametimer matches 0 run tag @a[tag=player10] remove player10
execute if score gametimer gametimer matches 0 run tag @a[tag=player11] remove player11
execute if score gametimer gametimer matches 0 run tag @a[tag=selected] remove selected
execute if score gametimer gametimer matches 0 run scoreboard players set @e[tag=playerscore] player 0

execute if score gametimer gametimer matches 0 run tag @a remove joined

execute if score gametimer gametimer matches 0 run scoreboard players set Red kills 0
execute if score gametimer gametimer matches 0 run scoreboard players set Yellow kills 0
execute if score gametimer gametimer matches 0 run scoreboard players set Blue kills 0
execute if score gametimer gametimer matches 0 run scoreboard players set Green kills 0
execute if score gametimer gametimer matches 0 run scoreboard players operation Red kills += @a[team=red] kills
execute if score gametimer gametimer matches 0 run scoreboard players operation Yellow kills += @a[team=yellow] kills
execute if score gametimer gametimer matches 0 run scoreboard players operation Blue kills += @a[team=blue] kills
execute if score gametimer gametimer matches 0 run scoreboard players operation Green kills += @a[team=green] kills

execute if score gametimer gametimer matches 0 run execute as @a run scoreboard players operation @s totalkills += @s kills
execute if score gametimer gametimer matches 0 run scoreboard players set @a kills 0

execute if score gametimer gametimer matches 0 run team empty blue
execute if score gametimer gametimer matches 0 run team empty red
execute if score gametimer gametimer matches 0 run team empty yellow
execute if score gametimer gametimer matches 0 run team empty green

execute if score gametimer gametimer matches 0 run execute if score Red kills >= Blue kills if score Red kills >= Yellow kills if score Red kills >= Green kills run say Red won!
execute if score gametimer gametimer matches 0 run execute if score Blue kills >= Red kills if score Blue kills >= Yellow kills if score Blue kills >= Green kills run say Blue won!
execute if score gametimer gametimer matches 0 run execute if score Yellow kills >= Blue kills if score Yellow kills >= Red kills if score Yellow kills >= Green kills run say Yellow won!
execute if score gametimer gametimer matches 0 run execute if score Green kills >= Red kills if score Green kills >= Yellow kills if score Green kills >= Green kills run say Green won!

execute if score gametimer gametimer matches 0 run scoreboard players set started started 0
execute if score gametimer gametimer matches 0 run clear @a
execute if score gametimer gametimer matches 0 run scoreboard players set joined joined 0
execute if score gametimer gametimer matches 0 run scoreboard players set playerscore player 0


execute if score gametimer gametimer matches 0.. run scoreboard players remove gametimer gametimer 1
execute if score gametimer gametimer matches 0.. run schedule function crossfire:timer2 1s