# Start the game if possible
execute if score joined0 joined matches ..1 run tellraw @a[scores={map=0}] {"text":"Not enough players have chosen a team yet!"}

execute if score joined0 joined matches 2.. as @a[tag=!admin,scores={map=0}] run function crossfire:init_player
execute if score joined0 joined matches 2.. run scoreboard players set started0 started 1

# Reset kills for this team
execute if score joined0 joined matches 2.. run scoreboard players set Red kills 0
execute if score joined0 joined matches 2.. run scoreboard players set Yellow kills 0
execute if score joined0 joined matches 2.. run scoreboard players set Green kills 0
execute if score joined0 joined matches 2.. run scoreboard players set Blue kills 0
execute if score joined0 joined matches 2.. if score playerscore0 player matches 0 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player1
execute if score joined0 joined matches 2.. as @a[tag=player1] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player1] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 1 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player2
execute if score joined0 joined matches 2.. as @a[tag=player2] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player2] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 2 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player3
execute if score joined0 joined matches 2.. as @a[tag=player3] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player3] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 3 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player4
execute if score joined0 joined matches 2.. as @a[tag=player4] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player4] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 4 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player5
execute if score joined0 joined matches 2.. as @a[tag=player5] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player5] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 5 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player6
execute if score joined0 joined matches 2.. as @a[tag=player6] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player6] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 6 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player7
execute if score joined0 joined matches 2.. as @a[tag=player7] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player7] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 7 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player8
execute if score joined0 joined matches 2.. as @a[tag=player8] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player8] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 8 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player9
execute if score joined0 joined matches 2.. as @a[tag=player9] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player9] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 9 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player10
execute if score joined0 joined matches 2.. as @a[tag=player10] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player10] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1

execute if score joined0 joined matches 2.. if score playerscore0 player matches 10 as @a[tag=!selected0,tag=joined,scores={map=0},limit=1] run tag @s add player11
execute if score joined0 joined matches 2.. as @a[tag=player11] run tag @s add selected
execute if score joined0 joined matches 2.. as @a[tag=player11] run tag @s add selected0
execute if score joined0 joined matches 2.. run scoreboard players add playerscore0 player 1


execute if score joined0 joined matches 2.. run scoreboard players reset playerscore0 player
execute if score joined0 joined matches 2.. run scoreboard players set starttimer0 starttimer 5
execute if score joined0 joined matches 2.. run function crossfire:timer0

# Create party map cages (0)
execute if score joined0 joined matches 2.. run clone 438 76 383 444 86 386 526 70 440
execute if score joined0 joined matches 2.. run clone 438 76 388 444 86 391 526 70 399
execute if score joined0 joined matches 2.. run clone 444 76 393 441 86 399 548 70 418
execute if score joined0 joined matches 2.. run clone 441 76 407 444 86 401 507 70 418

# Remove post-game barriers
execute if score joined0 joined matches 2.. run fill 509 70 401 549 70 441 air replace barrier

# Remove the logos
execute if score joined0 joined matches 2.. run fill 525 109 403 528 89 440 air
