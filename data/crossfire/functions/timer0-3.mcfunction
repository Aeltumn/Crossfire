# Send bossbar to players
execute if score postgametimer0 postgametimer matches 0.. run execute store result bossbar crossfire:postgame0 value run scoreboard players get postgametimer0 postgametimer
execute if score postgametimer0 postgametimer matches 2.. run bossbar set crossfire:postgame0 name ["",{"text":"Back to lobby in: "},{"score":{"name":"postgametimer0","objective":"postgametimer"},"bold":true,"color":"aqua"},{"text":" seconds."}]
execute if score postgametimer0 postgametimer matches 1 run bossbar set crossfire:postgame0 name ["",{"text":"Back to lobby in: "},{"score":{"name":"postgametimer0","objective":"postgametimer"},"bold":true,"color":"aqua"},{"text":" second."}]

# Clone the logos back
clone 464 95 345 467 75 382 525 89 403 replace normal
execute if score postgametimer0 postgametimer matches 0 run function crossfire:lobby_teleport0

# Re-run the timer
execute if score postgametimer0 postgametimer matches 0.. run scoreboard players remove postgametimer0 postgametimer 1
execute if score postgametimer0 postgametimer matches 0.. run schedule function crossfire:timer0-3 1s replace