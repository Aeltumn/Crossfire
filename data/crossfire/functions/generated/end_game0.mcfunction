# Add barriers above the waterfill 509 70 401 549 70 441 barrier replace air

# Clear viewers of the timer
bossbar set crossfire:timer0 players
# Show the postgame bossbar
bossbar set crossfire:postgame0 players @a[scores={map=0}]
# Set the post game timer to its start value
scoreboard players set postgametimer0 postgametimer 25
# Reset all players in this map
execute as @a[scores={map=0}] run function crossfire:reset_player
# Reset all players in this map
function crossfire:timer0-3

# Send titles to winnerstitle @a[scores={map=0}] clear
title @a[scores={map=0}] subtitle {"text":""}
title @a[scores={map=0}] times 40 160 40

execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run scoreboard players set Red winner 1
execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run scoreboard players set Blue winner 1
execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run scoreboard players set Yellow winner 1
execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run scoreboard players set Green winner 1
execute if score Red winner matches 0 if score Green winner matches 0 if score Yellow winner matches 0 if score Blue winner matches 0 run scoreboard players set Draw0 winner 1
execute if score Red winner matches 1.. run tellraw @a[scores={map=0}] ["",{"text":"Red","bold":true,"color":"red"},{"text":" won the game!"}]
execute if score Red winner matches 1.. run title @a[scores={map=0}] title ["",{"text":"Red","bold":true,"color":"red"},{"text":" won the game!"}]
execute if score Blue winner matches 1.. run tellraw @a[scores={map=0}] ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" won the game!"}]
execute if score Blue winner matches 1.. run title @a[scores={map=0}] title ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" won the game!"}]
execute if score Yellow winner matches 1.. run tellraw @a[scores={map=0}] ["",{"text":"Yellow","bold":true,"color":"yellow"},{"text":" won the game!"}]
execute if score Yellow winner matches 1.. run title @a[scores={map=0}] title ["",{"text":"Yellow","bold":true,"color":"yellow"},{"text":" won the game!"}]
execute if score Green winner matches 1.. run tellraw @a[scores={map=0}] ["",{"text":"Green","bold":true,"color":"green"},{"text":" won the game!"}]
execute if score Green winner matches 1.. run title @a[scores={map=0}] title ["",{"text":"Green","bold":true,"color":"green"},{"text":" won the game!"}]
execute if score Draw0 winner matches 1.. run tellraw @a[scores={map=0}] ["",{"text":"It's a draw!","bold":true,"color":"gold"}]
execute if score Draw0 winner matches 1.. run title @a[scores={map=0}] title ["",{"text":"It's a draw!","bold":true,"color":"gold"}]
