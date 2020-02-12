# Get a random location number
# location result is in X = {0,1,2,3,4,5}
scoreboard players set location result 0
execute if predicate crossfire:coin_flip run scoreboard players add location result 1

# Spawn the crate in the correct location
# Iron crate
execute if score location result matches 0 if predicate crossfire:iron_chance positioned 523 85 305 run function crossfire:spawn/iron_crate
execute if score location result matches 1 if predicate crossfire:iron_chance positioned 534 84 293 run function crossfire:spawn/iron_crate

# Gold crate
execute if score location result matches 0 if predicate crossfire:gold_chance positioned 523 89 282 run function crossfire:spawn/gold_crate
execute if score location result matches 1 if predicate crossfire:gold_chance positioned 533 89 300 run function crossfire:spawn/gold_crate