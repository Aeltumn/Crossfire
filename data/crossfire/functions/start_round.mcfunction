# Give everyone some invulnerability
scoreboard players set @a respawnshield 5

# Give everyone the tag to allow crossbow reloading
tag @a add reloadcrossbow

# Start the game!
execute as @a at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 100 1
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 1
title @a subtitle {"text":""}
title @a title {"text":"GO","bold":true,"color":"gold"}
bossbar set minecraft:timer players @a
scoreboard players set gametimer gametimer 300
function crossfire:timer2

# Open cages - party map (0)
execute if score map map matches 0 run clone 446 76 383 452 86 386 526 76 438
execute if score map map matches 0 run clone 446 76 388 452 86 391 526 76 401
execute if score map map matches 0 run clone 452 76 393 449 86 399 546 76 418
execute if score map map matches 0 run clone 449 76 407 452 86 401 509 76 418

# Open cages - duel map (1)
execute if score map map matches 1 run clone 446 77 364 440 87 361 526 70 274
execute if score map map matches 1 run clone 446 77 369 440 87 366 526 70 315
