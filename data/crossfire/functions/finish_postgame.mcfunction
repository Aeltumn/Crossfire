scoreboard players add round round 1
scoreboard players add @a round 1

# Clone logo back
clone 308 28 169 305 48 132 393 42 132
function crossfire:lobby_teleport
execute as @a run function crossfire:reset_player