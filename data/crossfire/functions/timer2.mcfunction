# Send bossbar to players
execute if score gametimer gametimer matches 0.. run execute store result bossbar minecraft:timer value run scoreboard players get gametimer gametimer
execute if score gametimer gametimer matches 2.. run bossbar set minecraft:timer name ["",{"text":"Game ends in: "},{"score":{"name":"gametimer","objective":"gametimer"},"bold":true,"color":"gold"},{"text":" seconds."}]
execute if score gametimer gametimer matches 1 run bossbar set minecraft:timer name ["",{"text":"Game ends in: "},{"score":{"name":"gametimer","objective":"gametimer"},"bold":true,"color":"gold"},{"text":" second."}]

execute if score postgametimer postgametimer matches 0.. run execute store result bossbar crossfire:postgame value run scoreboard players get postgametimer postgametimer
execute if score postgametimer postgametimer matches 2.. run bossbar set crossfire:postgame name ["",{"text":"Back to lobby in: "},{"score":{"name":"postgametimer","objective":"postgametimer"},"bold":true,"color":"aqua"},{"text":" seconds."}]
execute if score postgametimer postgametimer matches 1 run bossbar set crossfire:postgame name ["",{"text":"Back to lobby in: "},{"score":{"name":"postgametimer","objective":"postgametimer"},"bold":true,"color":"aqua"},{"text":" second."}]

# Run game end
execute if score gametimer gametimer matches 0 run function crossfire:end_game
execute if score postgametimer postgametimer matches 0 run function crossfire:finish_postgame

# Re-run the timer
execute if score gametimer gametimer matches 1.. run scoreboard players remove gametimer gametimer 1
execute if score postgametimer postgametimer matches 1.. run scoreboard players remove postgametimer postgametimer 1
execute if score gametimer gametimer matches 0.. run schedule function crossfire:timer2 1s
execute unless score gametimer gametimer matches 0.. if score postgametimer postgametimer matches 0.. run schedule function crossfire:timer2 1s