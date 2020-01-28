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

scoreboard players add round round 1
scoreboard players add @a round 1

title @a clear
title @a subtitle {"text":""}
title @a times 20 100 20
execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run tellraw @a ["",{"text":"Red","bold":true,"color":"red"},{"text":" won the game!"}]
execute if score Red kills > Blue kills if score Red kills > Yellow kills if score Red kills > Green kills run title @a title ["",{"text":"Red","bold":true,"color":"red"},{"text":" won the game!"}]
execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run tellraw @a ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" won the game!"}]
execute if score Blue kills > Red kills if score Blue kills > Yellow kills if score Blue kills > Green kills run title @a title ["",{"text":"Blue","bold":true,"color":"aqua"},{"text":" won the game!"}]
execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run tellraw @a ["",{"text":"Yellow","bold":true,"color":"yellow"},{"text":" won the game!"}]
execute if score Yellow kills > Blue kills if score Yellow kills > Red kills if score Yellow kills > Green kills run title @a title ["",{"text":"Yellow","bold":true,"color":"yellow"},{"text":" won the game!"}]
execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run tellraw @a ["",{"text":"Green","bold":true,"color":"green"},{"text":" won the game!"}]
execute if score Green kills > Red kills if score Green kills > Yellow kills if score Green kills > Green kills run title @a title ["",{"text":"Green","bold":true,"color":"green"},{"text":" won the game!"}]

execute as @a run function crossfire:reset_player
function crossfire:lobby_teleport