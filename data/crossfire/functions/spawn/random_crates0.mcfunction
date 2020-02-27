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
execute if predicate crossfire:coin_flip run scoreboard players add location0 result 1

# Spawn the crate in the correct location
# Iron crate
execute if score location0 result matches 0 if predicate crossfire:iron_chance positioned 529 72 410 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 1 if predicate crossfire:iron_chance positioned 538 76 415 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 2 if predicate crossfire:iron_chance positioned 539 72 421 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 3 if predicate crossfire:iron_chance positioned 529 72 430 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 4 if predicate crossfire:iron_chance positioned 520 76 426 run function crossfire:spawn/iron_crate0
execute if score location0 result matches 5 if predicate crossfire:iron_chance positioned 529 71 421 run function crossfire:spawn/iron_crate0

# Gold crate
execute if score location0 result matches 6 if predicate crossfire:gold_chance positioned 539 78 411 run function crossfire:spawn/gold_crate0
execute if score location0 result matches 7 if predicate crossfire:gold_chance positioned 536 74 428 run function crossfire:spawn/gold_crate0
execute if score location0 result matches 8 if predicate crossfire:gold_chance positioned 518 78 431 run function crossfire:spawn/gold_crate0
execute if score location0 result matches 9 if predicate crossfire:gold_chance positioned 522 74 415 run function crossfire:spawn/gold_crate0