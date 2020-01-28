scoreboard objectives add gametimer dummy
scoreboard objectives add postgametimer dummy
scoreboard objectives add starttimer dummy
scoreboard objectives add started dummy
scoreboard objectives add playerscore dummy
scoreboard objectives add deadtimer dummy
scoreboard objectives add respawnshield dummy
scoreboard objectives add joined dummy
scoreboard objectives add age dummy
scoreboard objectives add roundKills dummy
scoreboard objectives add spectateSuccess dummy
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add kills dummy {"text":"Kills"}
scoreboard objectives setdisplay belowName kills
scoreboard objectives setdisplay list kills

# Create Bossbars
bossbar add crossfire:postgame {"text":""}
bossbar set crossfire:postgame color blue
bossbar add minecraft:timer {"text":""}
bossbar set minecraft:timer color yellow

team add red
team add yellow
team add green
team add blue
team add lobby

# Setup Teams
team modify blue color aqua
team modify green color green
team modify yellow color yellow
team modify red color red
team modify lobby color gray
team modify lobby collisionRule never
team modify lobby friendlyFire false
team modify red friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify blue friendlyFire false

# Setup gamestate
difficulty peaceful
gamerule announceAdvancements false
gamerule disableRaids true
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fireDamage false
gamerule fallDamage false
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule naturalRegeneration false

execute as @a run function crossfire:reset_player
function crossfire:lobby_teleport