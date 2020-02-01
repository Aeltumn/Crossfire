execute if score joined joined matches ..1 run tellraw @a {"text":"Not enough players have chosen a team yet!"}

execute if score joined joined matches 2.. as @a[tag=!admin] run function crossfire:init_player
execute if score joined joined matches 2.. run scoreboard players set started started 1

execute if score joined joined matches 2.. if score playerscore player matches 0 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player1
execute if score joined joined matches 2.. as @a[tag=player1] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 1 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player2
execute if score joined joined matches 2.. as @a[tag=player2] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 2 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player3
execute if score joined joined matches 2.. as @a[tag=player3] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 3 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player4
execute if score joined joined matches 2.. as @a[tag=player4] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 4 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player5
execute if score joined joined matches 2.. as @a[tag=player5] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 5 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player6
execute if score joined joined matches 2.. as @a[tag=player6] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 6 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player7
execute if score joined joined matches 2.. as @a[tag=player7] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 7 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player8
execute if score joined joined matches 2.. as @a[tag=player8] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 8 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player9
execute if score joined joined matches 2.. as @a[tag=player9] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 9 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player10
execute if score joined joined matches 2.. as @a[tag=player10] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1

execute if score joined joined matches 2.. if score playerscore player matches 10 as @a[tag=!selected,tag=joined,limit=1] run tag @s add player11
execute if score joined joined matches 2.. as @a[tag=player11] run tag @s add selected
execute if score joined joined matches 2.. run scoreboard players add playerscore player 1


execute if score joined joined matches 2.. run scoreboard players set starttimer starttimer 5
execute if score joined joined matches 2.. run function crossfire:timer

# Create the cages
clone 323 30 161 319 40 157 395 26 174
clone 329 30 161 325 40 157 369 26 148
clone 318 30 161 313 40 157 395 26 122
clone 335 30 161 331 40 157 421 26 148

# Remove the logo
fill 393 42 132 396 62 169 air