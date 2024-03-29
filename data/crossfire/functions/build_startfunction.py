for xi in [0, 1]:
    x = str(xi)
    file = open("generated\\start"+x+".mcfunction", "w+")
        
    file.write("# Determine joined value\n")
    file.write("scoreboard players set joined"+x+" joined 0\n")
    file.write("execute as @e[tag=joined"+x+"] run scoreboard players add joined"+x+" joined 1\n")
    file.write("\n")
    
    file.write("# If only one team is filled we set joined to 0 to prevent a game start\n")
    file.write("scoreboard players set temp5"+x+" result 0\n")
    if xi == 0:
        file.write("execute if entity @a[team=red] run scoreboard players add temp50 result 1\n")
        file.write("execute if entity @a[team=green] run scoreboard players add temp50 result 1\n")
        file.write("execute if entity @a[team=yellow] run scoreboard players add temp50 result 1\n")
        file.write("execute if entity @a[team=blue] run scoreboard players add temp50 result 1\n")
    if xi == 1:
        file.write("execute if entity @a[team=orange] run scoreboard players add temp51 result 1\n")
        file.write("execute if entity @a[team=magenta] run scoreboard players add temp51 result 1\n")
    file.write("\n")
    file.write("execute if score temp5"+x+" result matches ..1 run scoreboard players set joined"+x+" joined 0\n")
    file.write("\n")
    
    file.write("# Start the game if possible\n")
    file.write("execute if score joined"+x+" joined matches 0 run tellraw @a[scores={map="+x+"}] {\"text\":\"You need to have at least 2 teams with players in them.\"}\n")
    file.write("execute if score joined"+x+" joined matches 1 run tellraw @a[scores={map="+x+"}] {\"text\":\"Not enough players have chosen a team yet!\"}\n")
    file.write("\n")
    file.write("execute if score joined"+x+" joined matches 2.. as @a[tag=!admin,scores={map="+x+"}] run function crossfire:init_player\n")
    file.write("execute if score joined"+x+" joined matches 2.. run scoreboard players set started"+x+" started 1\n")
    file.write("\n")
    
    file.write("# Reset kills for this team\n")
    if xi == 0:
        file.write("execute if score joined0 joined matches 2.. run scoreboard players set Red kills 0\n")
        file.write("execute if score joined0 joined matches 2.. run scoreboard players set Yellow kills 0\n")
        file.write("execute if score joined0 joined matches 2.. run scoreboard players set Green kills 0\n")
        file.write("execute if score joined0 joined matches 2.. run scoreboard players set Blue kills 0\n")
    if xi == 1:
        file.write("execute if score joined1 joined matches 2.. run scoreboard players set Orange kills 0\n")
        file.write("execute if score joined1 joined matches 2.. run scoreboard players set Magenta kills 0\n")

    # This file is messy but this for loop is worth it.
    for s in range(1, 12):
        name = "player" + str(s)
        file.write("execute if score joined"+x+" joined matches 2.. unless entity @a[tag="+name+"] as @a[tag=!selected"+x+",tag=joined,scores={map="+x+"},limit=1] run tag @s add " + name + "\n")
        file.write("execute if score joined"+x+" joined matches 2.. as @a[tag=" + name + ",scores={map="+x+"}] run tag @s add selected\n")
        file.write("execute if score joined"+x+" joined matches 2.. as @a[tag=" + name + ",scores={map="+x+"}] run tag @s add pregame\n")
        file.write("execute if score joined"+x+" joined matches 2.. as @a[tag=" + name + ",scores={map="+x+"}] run tag @s remove mapchanger\n")
        file.write("execute if score joined"+x+" joined matches 2.. as @a[tag=" + name + ",scores={map="+x+"}] run tag @s add selected"+x+"\n")
        file.write("\n")

    file.write("\n")
    file.write("\n")
    file.write("execute if score joined"+x+" joined matches 2.. run scoreboard players set starttimer"+x+" starttimer 5\n")
    file.write("execute if score joined"+x+" joined matches 2.. run function crossfire:timer"+x+"\n")
    file.write("\n")
    if xi == 0:
        file.write("# Create party map cages (0)\n")
        file.write("execute if score joined0 joined matches 2.. run clone 438 76 383 444 86 386 526 70 440\n")
        file.write("execute if score joined0 joined matches 2.. run clone 438 76 388 444 86 391 526 70 399\n")
        file.write("execute if score joined0 joined matches 2.. run clone 444 76 393 441 86 399 548 70 418\n")
        file.write("execute if score joined0 joined matches 2.. run clone 441 76 407 444 86 401 507 70 418\n")
    if xi == 1:
        file.write("# Create duel map cages (1)\n")
        file.write("execute if score joined1 joined matches 2.. run clone 438 77 364 432 87 361 526 70 274\n")
        file.write("execute if score joined1 joined matches 2.. run clone 438 77 369 432 87 366 526 70 315\n")
    file.write("\n")
    file.write("# Remove post-game barriers\n")
    if xi == 0: file.write("execute if score joined0 joined matches 2.. run fill 509 70 401 549 70 441 air replace barrier\n")
    if xi == 1: file.write("execute if score joined1 joined matches 2.. run fill 509 70 276 549 70 316 air replace barrier\n")
    file.write("\n")
    file.write("# Remove the logos\n")
    if xi == 0: file.write("execute if score joined0 joined matches 2.. run fill 525 109 403 528 89 440 air\n")
    if xi == 1: file.write("execute if score joined1 joined matches 2.. run fill 528 89 315 525 109 278 air\n")

    file.close()