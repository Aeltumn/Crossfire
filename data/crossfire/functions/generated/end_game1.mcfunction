# Add barriers above the waterfill 509 70 276 549 70 316 barrier replace air

# Kill summary
tellraw @a[scores={map=1}] ["",{"text":"Point scoreboard for this game:"}]
tellraw @a[scores={map=1}] ["",{"text":"(kills give 1 point, death from water retracts 1 point)","color":"gray"}]
execute if entity @a[tag=player1,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player1]"},{"text":": "},{"score":{"name":"@a[tag=player1]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player2,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player2]"},{"text":": "},{"score":{"name":"@a[tag=player2]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player3,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player3]"},{"text":": "},{"score":{"name":"@a[tag=player3]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player4,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player4]"},{"text":": "},{"score":{"name":"@a[tag=player4]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player5,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player5]"},{"text":": "},{"score":{"name":"@a[tag=player5]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player6,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player6]"},{"text":": "},{"score":{"name":"@a[tag=player6]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player7,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player7]"},{"text":": "},{"score":{"name":"@a[tag=player7]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player8,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player8]"},{"text":": "},{"score":{"name":"@a[tag=player8]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player9,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player9]"},{"text":": "},{"score":{"name":"@a[tag=player9]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player10,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player10]"},{"text":": "},{"score":{"name":"@a[tag=player10]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
execute if entity @a[tag=player11,scores={map=1}] run tellraw @a[scores={map=1}] ["",{"selector":"@a[tag=player11]"},{"text":": "},{"score":{"name":"@a[tag=player11]","objective":"roundKills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]
tellraw @a[scores={map=1}] [""]tellraw @a[scores={map=1}] ["",{"text":"Orange Team","color":"gold"},{"text":": "},{"score":{"name":"Orange","objective":"kills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]tellraw @a[scores={map=1}] ["",{"text":"Magenta Team","color":"light_purple"},{"text":": "},{"score":{"name":"Magenta","objective":"kills"},"color":"dark_purple"},{"text":" points","color":"dark_purple"}]# Clear viewers of the timer
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
