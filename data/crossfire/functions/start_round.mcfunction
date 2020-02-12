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
function crossfire:timer2

# Open cages (take positive X/Z corner)
# Green - 395 26 174
# Yellow - 421 26 148
# Red - 369 26 148
# Blue - 295 26 122
#clone 323 30 167 319 40 163 395 26 174
#clone 329 30 167 325 40 163 369 26 148
#clone 318 30 167 313 40 163 395 26 122
#clone 335 30 167 331 40 163 421 26 148

# Open cages - duel map (1)
clone 446 77 364 440 81 361 526 70 274
clone 446 77 369 440 81 366 526 70 315
