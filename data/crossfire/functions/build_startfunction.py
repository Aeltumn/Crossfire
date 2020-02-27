for xi in [0, 1]:
    x = str(xi)
    file = open("generated\\start"+x+".mcfunction", "w+")
    
    file.write("scoreboard players set map map "+x+"\n")
    file.write("execute if score map map matches "+x+" if score joined joined matches ..1 run tellraw @a[scores={map="+x+"}] {\"text\":\"Not enough players have chosen a team yet!\"}\n")
    file.write("\n")
    file.write("execute if score joined joined matches 2.. as @a[tag=!admin,scores={map="+x+"}] run function crossfire:init_player\n")
    file.write("execute if score joined joined matches 2.. run scoreboard players set started started"+x+" 1\n")
    file.write("execute if score joined joined matches 2.. run scoreboard players set started started 1\n")
    file.write("\n")

    # This file is messy but this for loop is worth it.
    for s in range(1, 12):
        name = "player" + str(s)
        file.write("execute if score joined joined matches 2.. if score playerscore player matches " + str(s - 1) + " as @a[tag=!selected"+x+",tag=joined,scores={map="+x+"},limit=1] run tag @s add " + name + "\n")
        file.write("execute if score joined joined matches 2.. as @a[tag=" + name + "] run tag @s add selected\n")
        file.write("execute if score joined joined matches 2.. as @a[tag=" + name + "] run tag @s add selected"+x+"\n")
        file.write("execute if score joined joined matches 2.. run scoreboard players add playerscore player 1\n")
        file.write("\n")

    file.write("\n")
    file.write("scoreboard players reset playerscore player")
    file.write("\n")
    file.write("execute if score joined joined matches 2.. run scoreboard players set starttimer starttimer 5\n")
    file.write("execute if score joined joined matches 2.. run function crossfire:timer\n")
    file.write("\n")
    if xi == 0:
        file.write("# Create party map cages (0)\n")
        file.write("execute if score map map matches 0 run clone 438 76 383 444 86 386 526 76 438\n")
        file.write("execute if score map map matches 0 run clone 438 76 388 444 86 391 526 76 401\n")
        file.write("execute if score map map matches 0 run clone 444 76 393 441 86 399 546 76 418\n")
        file.write("execute if score map map matches 0 run clone 441 76 407 444 86 401 509 76 418\n")
    if xi == 1:
        file.write("# Create duel map cages (1)\n")
        file.write("execute if score map map matches 1 run clone 438 77 364 432 87 361 526 70 274\n")
        file.write("execute if score map map matches 1 run clone 438 77 369 432 87 366 526 70 315\n")
    file.write("\n")
    file.write("# Remove post-game barriers\n")
    if xi == 0: file.write("fill 509 70 401 549 70 441 air replace barrier\n")
    if xi == 1: file.write("fill 509 70 276 549 70 316 air replace barrier\n")
    file.write("\n")
    file.write("# Remove the logos\n")
    if xi == 0: file.write("fill 525 109 403 528 89 440 air\n")
    if xi == 1: file.write("fill 528 89 315 525 109 278 air\n")

    file.close()