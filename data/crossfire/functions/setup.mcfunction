scoreboard objectives add age dummy

tag @a remove died
tag @a remove joined
bossbar set minecraft:test players

function crossfire:remove_kill_tag

scoreboard players set gametimer gametimer -1
scoreboard players set starttimer starttimer -1
scoreboard players set started started 0
scoreboard players set playerscore player 0
scoreboard players set joined joined 0

team empty blue
team empty red
team empty yellow
team empty green

execute as @a run tag @a[tag=player1] remove player1
execute as @a run tag @a[tag=player2] remove player2
execute as @a run tag @a[tag=player3] remove player3
execute as @a run tag @a[tag=player4] remove player4
execute as @a run tag @a[tag=player5] remove player5
execute as @a run tag @a[tag=player6] remove player6
execute as @a run tag @a[tag=player7] remove player7
execute as @a run tag @a[tag=player8] remove player8
execute as @a run tag @a[tag=player9] remove player9
execute as @a run tag @a[tag=player10] remove player10
execute as @a run tag @a[tag=player11] remove player11
execute as @a[tag=selected] run tag @s remove selected
execute as @e[tag=playerscore] run scoreboard players set @s player 0