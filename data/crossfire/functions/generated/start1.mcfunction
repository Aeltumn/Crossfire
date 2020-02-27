# Start the game if possible
execute if score joined1 joined matches ..1 run tellraw @a[scores={map=1}] {"text":"Not enough players have chosen a team yet!"}

execute if score joined1 joined matches 2.. as @a[tag=!admin,scores={map=1}] run function crossfire:init_player
execute if score joined1 joined matches 2.. run scoreboard players set started1 started 1

# Reset kills for this team
execute if score joined1 joined matches 2.. run scoreboard players set Orange kills 0
execute if score joined1 joined matches 2.. run scoreboard players set Magenta kills 0
execute if score joined1 joined matches 2.. if score playerscore1 player matches 0 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player1
execute if score joined1 joined matches 2.. as @a[tag=player1] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player1] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 1 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player2
execute if score joined1 joined matches 2.. as @a[tag=player2] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player2] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 2 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player3
execute if score joined1 joined matches 2.. as @a[tag=player3] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player3] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 3 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player4
execute if score joined1 joined matches 2.. as @a[tag=player4] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player4] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 4 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player5
execute if score joined1 joined matches 2.. as @a[tag=player5] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player5] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 5 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player6
execute if score joined1 joined matches 2.. as @a[tag=player6] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player6] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 6 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player7
execute if score joined1 joined matches 2.. as @a[tag=player7] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player7] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 7 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player8
execute if score joined1 joined matches 2.. as @a[tag=player8] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player8] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 8 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player9
execute if score joined1 joined matches 2.. as @a[tag=player9] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player9] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 9 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player10
execute if score joined1 joined matches 2.. as @a[tag=player10] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player10] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1

execute if score joined1 joined matches 2.. if score playerscore1 player matches 10 as @a[tag=!selected1,tag=joined,scores={map=1},limit=1] run tag @s add player11
execute if score joined1 joined matches 2.. as @a[tag=player11] run tag @s add selected
execute if score joined1 joined matches 2.. as @a[tag=player11] run tag @s add selected1
execute if score joined1 joined matches 2.. run scoreboard players add playerscore1 player 1


execute if score joined1 joined matches 2.. run scoreboard players reset playerscore1 player
execute if score joined1 joined matches 2.. run scoreboard players set starttimer1 starttimer 5
execute if score joined1 joined matches 2.. run function crossfire:timer1

# Create duel map cages (1)
execute if score joined1 joined matches 2.. run clone 438 77 364 432 87 361 526 70 274
execute if score joined1 joined matches 2.. run clone 438 77 369 432 87 366 526 70 315

# Remove post-game barriers
execute if score joined1 joined matches 2.. run fill 509 70 276 549 70 316 air replace barrier

# Remove the logos
execute if score joined1 joined matches 2.. run fill 528 89 315 525 109 278 air
