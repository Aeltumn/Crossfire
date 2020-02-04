# Increase copter age
scoreboard players add @e[type=supplycrate] age 1
scoreboard players add @e[type=crate] age 1

# Make too old crates leave
execute as @e[tag=supplycrate,tag=!wantstodrop,scores={age=800..}] run tag @s add crateless
execute as @e[tag=crate,tag=!wantstodrop,scores={age=800..}] run tag @s add crateless

# Cloud particle in copter
execute as @e[tag=crate] at @s run particle minecraft:cloud ~ ~2.5 ~ 0.6 0.3 0.6 0 1

# Lava particle if crate wants to dorp
execute as @e[tag=supplycrate,tag=wantstodrop,tag=!crateless] at @s run particle minecraft:lava ~ ~2.5 ~ 0.3 0.5 0.3 0 1

# Make crates drop if they want to and are above terracotta
execute as @e[tag=wantstodrop,tag=crate,tag=!crateless] at @s if block ~ 0 ~ minecraft:purple_glazed_terracotta run tag @s add dropped
execute as @e[tag=wantstodrop,tag=crate,tag=dropped] run data merge entity @s {NoGravity:0}
execute as @e[tag=wantstodrop,tag=crate,tag=dropped] run effect give @s minecraft:slow_falling 100000 0 true
execute as @e[tag=wantstodrop,tag=crate,tag=dropped] run tag @s remove wantstodrop

# Make copters fly away if they are above terracotta
execute as @e[tag=wantstodrop,tag=supplycrate,tag=!crateless] at @s if block ~ 0 ~ minecraft:purple_glazed_terracotta run tag @s add crateless
execute as @e[tag=wantstodrop,tag=supplycrate,tag=crateless] run tag @s remove wantstodrop

# Make crates explode on impact
execute as @e[tag=dropped,tag=iron] at @s unless block ~ ~-1 ~ minecraft:air run kill @s
execute as @e[tag=dropped,tag=gold] at @s unless block ~ ~-1 ~ minecraft:air run kill @s
execute as @e[tag=dropped,tag=diamond] at @s unless block ~ ~-1 ~ minecraft:air run kill @s
