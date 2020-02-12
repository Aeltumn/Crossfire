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
scoreboard objectives add isreloading dummy
scoreboard objectives add timer dummy
scoreboard objectives add round dummy
scoreboard objectives add result dummy
scoreboard objectives add map dummy
scoreboard objectives add crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add kills dummy {"text":"Kills"}
scoreboard objectives setdisplay belowName kills
scoreboard objectives setdisplay list kills

# Create Bossbars
bossbar add crossfire:postgame {"text":""}
bossbar set crossfire:postgame color blue
bossbar add minecraft:timer {"text":""}
bossbar set minecraft:timer color yellow

bossbar set crossfire:postgame max 25
bossbar set minecraft:timer max 300

team add red
team add yellow
team add green
team add blue
team add orange
team add magenta
team add lobby

# Setup Teams
team modify blue color aqua
team modify blue collisionRule never
team modify green color green
team modify green collisionRule never
team modify yellow color yellow
team modify yellow collisionRule never
team modify red color red
team modify red collisionRule never
team modify lobby color gray
team modify lobby collisionRule never
team modify orange color gold
team modify orange collisionRule never
team modify magenta color light_purple
team modify magenta collisionRule never

team modify blue seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify yellow seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify orange seeFriendlyInvisibles false
team modify magenta seeFriendlyInvisibles false
team modify lobby seeFriendlyInvisibles false

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

# Clone logo back
clone 464 95 345 467 75 382 525 89 278 replace normal
clone 464 95 345 467 75 382 525 89 403 replace normal
function crossfire:lobby_teleport