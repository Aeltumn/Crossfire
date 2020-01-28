# Send bossbar to players
execute if score postgametimer postgametimer matches 0.. run execute store result bossbar crossfire:postgame value run scoreboard players get postgametimer postgametimer
execute if score postgametimer postgametimer matches 2.. run bossbar set crossfire:postgame name ["",{"text":"Back to lobby in: "},{"score":{"name":"postgametimer","objective":"postgametimer"},"bold":true,"color":"aqua"},{"text":" seconds."}]
execute if score postgametimer postgametimer matches 1 run bossbar set crossfire:postgame name ["",{"text":"Back to lobby in: "},{"score":{"name":"postgametimer","objective":"postgametimer"},"bold":true,"color":"aqua"},{"text":" second."}]

# Run game end
execute if score postgametimer postgametimer matches 0 run function crossfire:finish_postgame

# Re-run the timer
execute if score postgametimer postgametimer matches 1.. run scoreboard players remove postgametimer postgametimer 1
execute if score postgametimer postgametimer matches 0.. run schedule function crossfire:timer3 1s replace