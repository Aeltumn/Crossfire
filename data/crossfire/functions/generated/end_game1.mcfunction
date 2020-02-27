# Add barriers above the waterfill 509 70 276 549 70 316 barrier replace air

# Clear viewers of the timer
bossbar set crossfire:timer1 players
# Show the postgame bossbar
bossbar set crossfire:postgame1 players @a[scores={map=1}]
# Set the post game timer to its start value
scoreboard players set postgametimer1 postgametimer 25
# Reset all players in this map
execute as @a[scores={map=1}] run function crossfire:reset_player
# Reset all players in this map
function crossfire:timer1-3

# Send titles to winnerstitle @a[scores={map=1}] clear
title @a[scores={map=1}] subtitle {"text":""}
title @a[scores={map=1}] times 40 160 40

execute if score Orange kills > Magenta kills run scoreboard players set Orange winner 1
execute if score Magenta kills > Orange kills run scoreboard players set Magenta winner 1
execute if score Orange winner matches 0 if score Magenta winner matches 0 run scoreboard players set Draw1 winner 1
execute if score Orange winner matches 1.. run tellraw @a[scores={map=1}] ["",{"text":"Orange","bold":true,"color":"gold"},{"text":" won the game!"}]
execute if score Orange winner matches 1.. run title @a[scores={map=1}] title ["",{"text":"Orange","bold":true,"color":"gold"},{"text":" won the game!"}]
execute if score Magenta winner matches 1.. run tellraw @a[scores={map=1}] ["",{"text":"Magenta","bold":true,"color":"light_purple"},{"text":" won the game!"}]
execute if score Magenta winner matches 1.. run title @a[scores={map=1}] title ["",{"text":"Magenta","bold":true,"color":"light_purple"},{"text":" won the game!"}]
execute if score Draw1 winner matches 1.. run tellraw @a[scores={map=1}] ["",{"text":"It's a draw!","bold":true,"color":"gold"}]
execute if score Draw1 winner matches 1.. run title @a[scores={map=1}] title ["",{"text":"It's a draw!","bold":true,"color":"gold"}]
