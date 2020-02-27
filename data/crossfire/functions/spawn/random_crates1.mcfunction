# Get a random location1 number
# location1 result is in X = {0,1}
scoreboard players set location1 result 0
execute if predicate crossfire:coin_flip run scoreboard players add location1 result 1

# Spawn the crate in the correct location
# Iron crate
execute if score location1 result matches 0 if predicate crossfire:iron_chance positioned 518 75 296 run function crossfire:spawn/iron_crate
execute if score location1 result matches 1 if predicate crossfire:iron_chance positioned 540 75 296 run function crossfire:spawn/iron_crate

# Gold crate
execute if score location1 result matches 0 if predicate crossfire:gold_chance positioned 529 71 296 run function crossfire:spawn/gold_crate
execute if score location1 result matches 1 if predicate crossfire:gold_chance positioned 529 71 296 run function crossfire:spawn/gold_crate