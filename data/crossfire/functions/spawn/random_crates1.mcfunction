# Get a random location1 number
scoreboard players set location1 result 0
execute if predicate crossfire:coin_flip run scoreboard players add location1 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location1 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location1 result 1

# Spawn the crate in the correct location
# Iron crate
execute if score location1 result matches 0 if predicate crossfire:iron_chance positioned 526 75 296 run function crossfire:spawn/iron_crate1
execute if score location1 result matches 1 if predicate crossfire:iron_chance positioned 545 75 296 run function crossfire:spawn/iron_crate1

# Gold crate
execute if score location1 result matches 2 if predicate crossfire:gold_chance positioned 532 71 296 run function crossfire:spawn/gold_crate1
execute if score location1 result matches 3 if predicate crossfire:gold_chance positioned 532 71 296 run function crossfire:spawn/gold_crate1