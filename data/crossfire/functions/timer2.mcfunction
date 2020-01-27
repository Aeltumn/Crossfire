# Send bossbar to players
execute if score gametimer gametimer matches 0.. run execute store result bossbar crossfire:timer value run scoreboard players get gametimer gametimer
execute if score gametimer gametimer matches 2.. run bossbar set crossfire:timer name ["",{"text":"Game ends in: "},{"score":{"name":"gametimer","objective":"gametimer"},"bold":true,"color":"gold"},{"text":" seconds."}]
execute if score gametimer gametimer matches 1 run bossbar set crossfire:timer name ["",{"text":"Game ends in: "},{"score":{"name":"gametimer","objective":"gametimer"},"bold":true,"color":"gold"},{"text":" second."}]

# Run game end
execute if score gametimer gametimer matches 0 run function crossfire:end_game

# Re-run the timer
execute if score gametimer gametimer matches 0.. run scoreboard players remove gametimer gametimer 1
execute if score gametimer gametimer matches 0.. run schedule function crossfire:timer2 1s