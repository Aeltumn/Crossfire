file = open("generated\\start.mcfunction", "w+")

file.write("execute if score joined joined matches ..1 run tellraw @a {\"text\":\"Not enough players have chosen a team yet!\"}\n")
file.write("\n")
file.write("execute if score joined joined matches 2.. as @a[tag=!admin] run function crossfire:init_player\n")
file.write("execute if score joined joined matches 2.. run scoreboard players set started started 1\n")
file.write("\n")

# This file is messy but this for loop is worth it.
for s in range(1, 12):
    name = "player" + str(s)
    file.write("execute if score joined joined matches 2.. if score playerscore player matches " + str(s - 1) + " as @a[tag=!selected,tag=joined,limit=1] run tag @s add " + name + "\n")
    file.write("execute if score joined joined matches 2.. as @a[tag=" + name + "] run tag @s add selected\n")
    file.write("execute if score joined joined matches 2.. run scoreboard players add playerscore player 1\n")
    file.write("\n")
    
file.write("\n")
file.write("execute if score joined joined matches 2.. run scoreboard players set starttimer starttimer 5\n")
file.write("execute if score joined joined matches 2.. run function crossfire:timer\n")
file.write("\n")
#file.write("# Create old map cages\n")
#file.write("clone 323 30 161 319 40 157 395 26 174\n")
#file.write("clone 329 30 161 325 40 157 369 26 148\n")
#file.write("clone 318 30 161 313 40 157 395 26 122\n")
#file.write("clone 335 30 161 331 40 157 421 26 148\n")
file.write("# Create duel map cages (1)\n")
file.write("clone 438 77 364 432 81 361 526 70 274\n")
file.write("clone 438 77 369 432 81 366 526 70 315\n")
file.write("\n")
file.write("# Remove the logos\n")
file.write("fill 528 89 315 525 109 278 air\n")
file.write("fill 525 109 403 528 89 440 air\n")

file.close()