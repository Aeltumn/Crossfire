# Start the game!
execute as @a at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 100 1
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 1
title @a title {"text":"GO","bold":true,"color":"gold"}
bossbar set crossfire:timer players @a
scoreboard players set gametimer gametimer 300
execute store result bossbar crossfire:timer max run scoreboard players get gametimer gametimer
function crossfire:timer2

# Open cages
fill 293 22 232 287 26 229 minecraft:air replace minecraft:barrier
fill 287 22 266 293 26 269 minecraft:air replace minecraft:barrier
fill 307 22 252 310 26 246 minecraft:air replace minecraft:barrier
fill 270 22 246 273 26 252 minecraft:air replace minecraft:barrier