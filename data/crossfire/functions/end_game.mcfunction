scoreboard players set Red kills 0
scoreboard players set Yellow kills 0
scoreboard players set Blue kills 0
scoreboard players set Green kills 0
scoreboard players operation Red kills += @a[team=red] roundKills
scoreboard players operation Yellow kills += @a[team=yellow] roundKills
scoreboard players operation Blue kills += @a[team=blue] roundKills
scoreboard players operation Green kills += @a[team=green] roundKills

execute as @a run scoreboard players operation @s kills += @s roundKills
scoreboard players set @a roundKills 0

# Start the post-game timer also set started to 0 to stop crossbow giving
scoreboard players set started started 0
bossbar set minecraft:timer players
bossbar set crossfire:postgame players @a
scoreboard players set postgametimer postgametimer 25
execute as @a run function crossfire:reset_player
function crossfire:timer3

# Send title for winners
title @a clear
title @a subtitle {"text":""}
title @a times 40 160 40
execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run scoreboard players set Red winner 1
execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run scoreboard players set Blue winner 1
execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run scoreboard players set Yellow winner 1
execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run scoreboard players set Green winner 1

execite if score Red winner matches 1.. run tellraw @a ["",{"text":"Red","bold":true,"color":"red"},{"text":" won the game!"}]
execite if score Red winner matches 1.. run title @a title ["",{"text":"Red","bold":true,"color":"red"},{"text":" won the game!"}]
execite if score Blue winner matches 1.. run tellraw @a ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" won the game!"}]
execite if score Blue winner matches 1.. run title @a title ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" won the game!"}]
execite if score Yellow winner matches 1.. run tellraw @a ["",{"text":"Yellow","bold":true,"color":"yellow"},{"text":" won the game!"}]
execite if score Yellow winner matches 1.. run title @a title ["",{"text":"Yellow","bold":true,"color":"yellow"},{"text":" won the game!"}]
execite if score Green winner matches 1.. run tellraw @a ["",{"text":"Green","bold":true,"color":"green"},{"text":" won the game!"}]
execite if score Green winner matches 1.. run title @a title ["",{"text":"Green","bold":true,"color":"green"},{"text":" won the game!"}]