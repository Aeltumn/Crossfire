for xi in [0, 1]:
    x = str(xi)
    file = open("generated\\end_game"+x+".mcfunction", "w+")
    
    file.write("# Add barriers above the water\n")
    if xi == 0: file.write("fill 509 70 401 549 70 441 barrier replace air\n")
    if xi == 1: file.write("fill 509 70 276 549 70 316 barrier replace air\n")
    file.write("\n")
    
    file.write("# Kill summary\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\"]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\"]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Point scoreboard for this game:\",\"bold\":true}]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"(kills give 1 point, death from water retracts 1 point)\",\"color\":\"gray\"}]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\"]\n")
    for i in range(1, 12):
        name = "player" + str(i)
        file.write("execute if entity @a[tag="+name+",scores={map="+x+"}] run tellraw @a[scores={map="+x+"}] [\"\",{\"selector\":\"@a[tag="+name+"]\"},{\"text\":\": \"},{\"score\":{\"name\":\"@a[tag="+name+"]\",\"objective\":\"roundKills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\"]\n")
    if xi == 0:
        file.write("execute if entity @a[team=red] run tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Red Team\",\"color\":\"red\"},{\"text\":\": \"},{\"score\":{\"name\":\"Red\",\"objective\":\"kills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
        file.write("execute if entity @a[team=yellow] run tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Yellow Team\",\"color\":\"yellow\"},{\"text\":\": \"},{\"score\":{\"name\":\"Yellow\",\"objective\":\"kills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
        file.write("execute if entity @a[team=green] run tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Green Team\",\"color\":\"green\"},{\"text\":\": \"},{\"score\":{\"name\":\"Green\",\"objective\":\"kills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
        file.write("execute if entity @a[team=blue] run tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Blue Team\",\"color\":\"aqua\"},{\"text\":\": \"},{\"score\":{\"name\":\"Blue\",\"objective\":\"kills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
    if xi == 1:
        file.write("execute if entity @a[team=orange] run tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Orange Team\",\"color\":\"gold\"},{\"text\":\": \"},{\"score\":{\"name\":\"Orange\",\"objective\":\"kills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
        file.write("execute if entity @a[team=magenta] run tellraw @a[scores={map="+x+"}] [\"\",{\"text\":\"Magenta Team\",\"color\":\"light_purple\"},{\"text\":\": \"},{\"score\":{\"name\":\"Magenta\",\"objective\":\"kills\"},\"color\":\"white\"},{\"text\":\" points\",\"color\":\"white\"}]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\"]\n")
    file.write("tellraw @a[scores={map="+x+"}] [\"\"]\n")
    
    file.write("\n")
      
    file.write("# Send titles to winners")
    file.write("title @a[scores={map="+x+"}] clear\n")
    file.write("title @a[scores={map="+x+"}] subtitle {\"text\":\"\"}\n")
    file.write("title @a[scores={map="+x+"}] times 40 160 40\n")
    file.write("\n")
    if xi == 0:
        file.write("execute unless entity @a[team=red] run scoreboard players set Red kills -999\n")
        file.write("execute unless entity @a[team=yellow] run scoreboard players set Yellow kills -999\n")
        file.write("execute unless entity @a[team=green] run scoreboard players set Green kills -999\n")
        file.write("execute unless entity @a[team=blue] run scoreboard players set Blue kills -999\n")
        file.write("execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run scoreboard players set Red winner 1\n")
        file.write("execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run scoreboard players set Blue winner 1\n")
        file.write("execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run scoreboard players set Yellow winner 1\n")
        file.write("execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Blue kills run scoreboard players set Green winner 1\n")
        file.write("execute unless score Red winner matches 1.. unless score Green winner matches 1.. unless score Yellow winner matches 1.. unless score Blue winner matches 1.. run scoreboard players set Draw0 winner 1\n")
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
        file.write("\n")
        file.write("# Actually give the wins to the players\n")
        file.write("execute if score Red winner matches 1.. run scoreboard players add @a[team=red] wins 1\n")
        file.write("execute if score Yellow winner matches 1.. run scoreboard players add @a[team=yellow] wins 1\n")
        file.write("execute if score Green winner matches 1.. run scoreboard players add @a[team=green] wins 1\n")
        file.write("execute if score Blue winner matches 1.. run scoreboard players add @a[team=blue] wins 1\n")

    if xi == 1:
        file.write("execute unless entity @a[team=orange] run scoreboard players set Orange kills -999\n")
        file.write("execute unless entity @a[team=magenta] run scoreboard players set Magenta kills -999\n")
        file.write("execute if score Orange kills > Magenta kills run scoreboard players set Orange winner 1\n")
        file.write("execute if score Magenta kills > Orange kills run scoreboard players set Magenta winner 1\n")
        file.write("execute unless score Orange winner matches 1.. unless score Magenta winner matches 1.. run scoreboard players set Draw1 winner 1\n")
        file.write("execute if score Orange winner matches 1.. run tellraw @a[scores={map=1}] [\"\",{\"text\":\"Orange\",\"bold\":true,\"color\":\"gold\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Orange winner matches 1.. run title @a[scores={map=1}] title [\"\",{\"text\":\"Orange\",\"bold\":true,\"color\":\"gold\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Magenta winner matches 1.. run tellraw @a[scores={map=1}] [\"\",{\"text\":\"Magenta\",\"bold\":true,\"color\":\"light_purple\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Magenta winner matches 1.. run title @a[scores={map=1}] title [\"\",{\"text\":\"Magenta\",\"bold\":true,\"color\":\"light_purple\"},{\"text\":\" won the game!\"}]\n")
        file.write("execute if score Draw1 winner matches 1.. run tellraw @a[scores={map=1}] [\"\",{\"text\":\"It's a draw!\",\"bold\":true,\"color\":\"gold\"}]\n")
        file.write("execute if score Draw1 winner matches 1.. run title @a[scores={map=1}] title [\"\",{\"text\":\"It's a draw!\",\"bold\":true,\"color\":\"gold\"}]\n")
        file.write("\n")
        file.write("# Actually give the wins to the players\n")
        file.write("execute if score Orange winner matches 1.. run scoreboard players add @a[team=orange] wins 1\n")
        file.write("execute if score Magenta winner matches 1.. run scoreboard players add @a[team=magenta] wins 1\n")
 
    file.write("\n")
    file.write("# Play sound to play depending on if they won or lost\n")
    if xi == 0:
        file.write("execute if score Red winner matches 1.. run tag @a[team=red,scores={map="+x+"}] add won0\n")
        file.write("execute if score Yellow winner matches 1.. run tag @a[team=yellow,scores={map="+x+"}] add won0\n")
        file.write("execute if score Green winner matches 1.. run tag @a[team=green,scores={map="+x+"}] add won0\n")
        file.write("execute if score Blue winner matches 1.. run tag @a[team=blue,scores={map="+x+"}] add won0\n")
    if xi == 1:
        file.write("execute if score Orange winner matches 1.. run tag @a[team=orange,scores={map="+x+"}] add won1\n")
        file.write("execute if score Magenta winner matches 1.. run tag @a[team=magenta,scores={map="+x+"}] add won1\n")
           
    file.write("\n")
    file.write("# Give lost if you don't have win\n") 
    file.write("tag @a[tag=!won"+x+",scores={map="+x+"}] add lost"+x+"\n")
    
    file.write("\n")
    file.write("# Play this game's song function (in case of simultanious wins we have two copies)\n")
    file.write("schedule function crossfire:song"+x+" 6s replace\n")
 
    file.write("\n")
    file.write("# Clear viewers of the timer\n")
    file.write("bossbar set crossfire:timer"+x+" players\n")
    file.write("# Show the postgame bossbar\n")
    file.write("bossbar set crossfire:postgame"+x+" players\n")
    file.write("bossbar set crossfire:postgame"+x+" players @a[scores={map="+x+"}]\n")
    file.write("scoreboard players set game"+x+" bar 2\n")
    file.write("# Set the post game timer to its start value\n")
    file.write("scoreboard players set postgametimer"+x+" postgametimer 25\n")
    file.write("# Reset all players in this map\n")
    file.write("execute as @a[scores={map="+x+"},tag=joined] run function crossfire:reset_player\n")
    file.write("# Reset all players in this map\n")
    file.write("function crossfire:timer"+x+"-3\n")
    file.write("# Cleanup\n")
    file.write("kill @e[tag=cleanup"+x+"]\n")
 
    file.close()