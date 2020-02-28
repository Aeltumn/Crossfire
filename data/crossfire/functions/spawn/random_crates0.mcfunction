# Get a random location0 number
scoreboard players set location0 result 0
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1

# Spawn the crate in the correct location
# Iron crate
execute if score location0 result matches 0 if predicate crossfire:iron_chance positioned 529 80 410 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 1 if predicate crossfire:iron_chance positioned 538 80 415 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 2 if predicate crossfire:iron_chance positioned 539 80 421 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 3 if predicate crossfire:iron_chance positioned 529 80 430 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 4 if predicate crossfire:iron_chance positioned 520 80 426 run function crossfire:spawn/iron_crate0

# Gold crate
execute if score location0 result matches 5 if predicate crossfire:gold_chance positioned 539 80 411 run function crossfire:spawn/gold_crate0
execute if score location0 result matches 6 if predicate crossfire:gold_chance positioned 536 80 428 run function crossfire:spawn/gold_crate0
execute if score location0 result matches 7 if predicate crossfire:gold_chance positioned 518 80 431 run function crossfire:spawn/gold_crate0
execute if score location0 result matches 8 if predicate crossfire:gold_chance positioned 522 80 415 run function crossfire:spawn/gold_crate0