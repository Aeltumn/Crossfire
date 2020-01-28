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

execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run say Red won!
execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run say Blue won!
execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run say Yellow won!
execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run say Green won!

function crossfire:lobby_teleport