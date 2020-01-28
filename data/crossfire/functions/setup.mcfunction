scoreboard objectives add gametimer dummy
scoreboard objectives add starttimer dummy
scoreboard objectives add started dummy
scoreboard objectives add playerscore dummy
scoreboard objectives add deathtimer dummy
scoreboard objectives add respawnshield dummy
scoreboard objectives add joined dummy
scoreboard objectives add age dummy
scoreboard objectives add roundKills dummy
scoreboard objectives add spectateSuccess dummy
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add kills dummy {"text":"Kills"}
scoreboard objectives setdisplay belowName kills
scoreboard objectives setdisplay list kills

team add red
team add yellow
team add green
team add blue
team add lobby

difficulty peaceful

execute as @a run function crossfire:reset_player
function crossfire:lobby_teleport