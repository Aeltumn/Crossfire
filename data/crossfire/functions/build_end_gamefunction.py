for xi in [0, 1]:
    x = str(xi)
    file = open("generated\\end_game"+x+".mcfunction", "w+")
    
    file.write("# Add barriers above the water")
    if xi == 0: file.write("fill 509 70 401 549 70 441 barrier replace air\n")
    if xi == 1: file.write("fill 509 70 276 549 70 316 barrier replace air\n")
    file.write("\n")
    
    file.write("# Clear viewers of the timer\n")
    file.write("bossbar set crossfire:timer"+x+" players\n")
    file.write("# Show the postgame bossbar\n")
    file.write("bossbar set crossfire:postgame"+x+" players @a[scores={map="+x+"}]\n")
    file.write("# Set the post game timer to its start value\n")
    file.write("scoreboard players set postgametimer"+x+" postgametimer 25\n")
    file.write("# Reset all players in this map\n")
    file.write("execute as @a[scores={map="+x+"}] run function crossfire:reset_player\n")
    file.write("# Reset all players in this map\n")
    file.write("function crossfire:timer"+x+"-3\n")
    file.write("\n")
    
    file.write("# Send titles to winners")
    file.write("title @a[scores={map="+x+"}] clear\n")
    file.write("title @a[scores={map="+x+"}] subtitle {\"text\":\"\"}\n")
    file.write("title @a[scores={map="+x+"}] times 40 160 40\n")
    file.write("\n")
    if xi == 0:
        file.write("execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run scoreboard players set Red winner 1\n")
        file.write("execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run scoreboard players set Blue winner 1\n")
        file.write("execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run scoreboard players set Yellow winner 1\n")
        file.write("execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run scoreboard players set Green winner 1\n")
        file.write("execute if score Red winner matches 0 if score Green winner matches 0 if score Yellow winner matches 0 if score Blue winner matches 0 run scoreboard players set Draw0 winner 1\n")
        file.write("execute if score Red winner matches 1.. run tellraw @a[scores={map=0}] [\"\",{\"text\":\"Red\",\"bold\":true,\"color\":\"red\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Red winner matches 1.. run title @a[scores={map=0}] title [\"\",{\"text\":\"Red\",\"bold\":true,\"color\":\"red\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Blue winner matches 1.. run tellraw @a[scores={map=0}] [\"\",{\"text\":\"Blue\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Blue winner matches 1.. run title @a[scores={map=0}] title [\"\",{\"text\":\"Blue\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Yellow winner matches 1.. run tellraw @a[scores={map=0}] [\"\",{\"text\":\"Yellow\",\"bold\":true,\"color\":\"yellow\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Yellow winner matches 1.. run title @a[scores={map=0}] title [\"\",{\"text\":\"Yellow\",\"bold\":true,\"color\":\"yellow\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Green winner matches 1.. run tellraw @a[scores={map=0}] [\"\",{\"text\":\"Green\",\"bold\":true,\"color\":\"green\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Green winner matches 1.. run title @a[scores={map=0}] title [\"\",{\"text\":\"Green\",\"bold\":true,\"color\":\"green\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Draw0 winner matches 1.. run tellraw @a[scores={map=0}] [\"\",{\"text\":\"It's a draw!\",\"bold\":true,\"color\":\"gold\"}]\n")
        file.write("execute if score Draw0 winner matches 1.. run title @a[scores={map=0}] title [\"\",{\"text\":\"It's a draw!\",\"bold\":true,\"color\":\"gold\"}]\n")

    if xi == 1:
        file.write("execute if score Orange kills > Magenta kills run scoreboard players set Orange winner 1\n")
        file.write("execute if score Magenta kills > Orange kills run scoreboard players set Magenta winner 1\n")
        file.write("execute if score Orange winner matches 0 if score Magenta winner matches 0 run scoreboard players set Draw1 winner 1\n")
        file.write("execute if score Orange winner matches 1.. run tellraw @a[scores={map=1}] [\"\",{\"text\":\"Orange\",\"bold\":true,\"color\":\"gold\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Orange winner matches 1.. run title @a[scores={map=1}] title [\"\",{\"text\":\"Orange\",\"bold\":true,\"color\":\"gold\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Magenta winner matches 1.. run tellraw @a[scores={map=1}] [\"\",{\"text\":\"Magenta\",\"bold\":true,\"color\":\"light_purple\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Magenta winner matches 1.. run title @a[scores={map=1}] title [\"\",{\"text\":\"Magenta\",\"bold\":true,\"color\":\"light_purple\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Draw1 winner matches 1.. run tellraw @a[scores={map=1}] [\"\",{\"text\":\"It's a draw!\",\"bold\":true,\"color\":\"gold\"}]\n")
        file.write("execute if score Draw1 winner matches 1.. run title @a[scores={map=1}] title [\"\",{\"text\":\"It's a draw!\",\"bold\":true,\"color\":\"gold\"}]\n")
 
    file.close()