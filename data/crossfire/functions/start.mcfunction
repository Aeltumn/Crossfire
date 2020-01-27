execute if score joined joined matches ..1 run tellraw @a {"text":"Not enough players have chosen a team yet!"}

execute if score joined joined matches 2.. as @a run function crossfire:init_player
execute if score joined joined matches 2.. run scoreboard players set started started 1
execute if score joined joined matches 2.. run gamemode spectator @a[tag=!joined]

execute if score joined joined matches 2.. if score playerscore player matches 0 as @r[tag=!selected] if entity @s[tag=joined] run tag @s add player1
execute if score joined joined matches 2.. as @a[tag=player1] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 1 as @r[tag=!selected] if entity @s[tag=joined] run tag @s add player2
execute if score joined joined matches 2.. as @a[tag=player2] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 2 as @r[tag=!selected] if entity @s[tag=joined] run tag @s add player3
execute if score joined joined matches 2.. as @a[tag=player3] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. as @a[tag=player1] run say player1
execute if score joined joined matches 2.. as @a[tag=player2] run say player2
execute if score joined joined matches 2.. as @a[tag=player3] run say player3

execute if score joined joined matches 2.. run scoreboard players set starttimer starttimer 5
execute if score joined joined matches 2.. run function crossfire:timer