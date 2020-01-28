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
# Red cage
fill 293 22 232 287 26 232 barrier replace air
fill 287 22 229 287 26 232 barrier replace air
fill 287 22 229 293 26 229 barrier replace air
fill 293 22 229 293 26 232 barrier replace air
fill 293 26 232 287 26 229 barrier replace air

# Yellow cage
fill 293 22 269 287 26 269 barrier replace air
fill 287 22 269 287 26 266 barrier replace air
fill 287 22 266 293 26 266 barrier replace air
fill 293 22 266 293 26 269 barrier replace air
fill 287 26 266 293 26 269 barrier replace air

# Green cage
fill 307 22 246 307 26 252 barrier replace air
fill 307 22 252 309 26 252 barrier replace air
fill 307 22 246 309 26 246 barrier replace air
fill 307 26 252 309 26 246 barrier replace air

# Blue cage
fill 270 22 246 273 26 246 barrier replace air
fill 273 22 246 273 26 252 barrier replace air
fill 273 22 252 270 26 252 barrier replace air
fill 270 22 252 270 26 246 barrier replace air
fill 270 26 252 273 26 246 barrier replace air
