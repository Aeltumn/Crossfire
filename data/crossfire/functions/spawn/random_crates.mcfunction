# Get a random location number
# location result is in X = {0,1,2,3,4,5}
scoreboard players set location result 0
execute if predicate crossfire:coin_flip run scoreboard players add location result 1

# Spawn the crate in the correct location
# Iron crate
execute if score location result matches 0 if predicate crossfire:iron_chance positioned 397 22 150 run function crossfire:spawn/iron_crate
execute if score location result matches 1 if predicate crossfire:iron_chance positioned 383 25 164 run function crossfire:spawn/iron_crate

# Gold crate
execute if score location result matches 0 if predicate crossfire:gold_chance positioned 391 27 163 run function crossfire:spawn/gold_crate
execute if score location result matches 1 if predicate crossfire:gold_chance positioned 397 22 150 run function crossfire:spawn/gold_crate

# Diamond crate
execute if score location result matches 0 f predicate crossfire:diamond_chance positioned 390 20 177 rotated -180 0 run function crossfire:spawn/diamond_crate
execute if score location result matches 1 if predicate crossfire:diamond_chance positioned 404 32 123 rotated 0 0 run function crossfire:spawn/diamond_crate