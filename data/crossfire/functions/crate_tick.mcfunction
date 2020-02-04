# Increase copter age
scoreboard players add @e[tag=supplycrate] age 1
scoreboard players add @e[tag=crate] age 1

# Make too old crates leave
execute as @e[tag=supplycrate,tag=!diamond,tag=!wantstodrop,tag=!crateless,scores={age=800..}] run tag @s add crateless
execute as @e[tag=crate,tag=!diamond,tag=!wantstodrop,tag=!dropped,scores={age=800..}] run tag @s add crateless

# Diamond crates have their own lifespawn
execute as @e[tag=supplycrate,tag=diamond,tag=!wantstodrop,tag=!crateless,scores={age=300..}] run tag @s add crateless
execute as @e[tag=crate,tag=diamond,tag=!wantstodrop,tag=!dropped,scores={age=300..}] run tag @s add crateless

# Cloud particle in copter
execute as @e[tag=crate] at @s run particle minecraft:cloud ~ ~2.5 ~ 0.6 0.3 0.6 0 1

# Lava particle if crate wants to dorp
execute as @e[tag=supplycrate,tag=wantstodrop,tag=!crateless] at @s run particle minecraft:lava ~ ~2.5 ~ 0.3 0.5 0.3 0 1

# Make crates explode on impact
execute as @e[tag=dropped,scores={age=5..}] if data entity @s {OnGround:1b} at @s run function crossfire:drop_iron

# Make crates drop if they want to and are above terracotta
execute as @e[tag=wantstodrop,tag=crate,tag=!crateless] at @s if block ~ 0 ~ minecraft:purple_glazed_terracotta run tag @s add dropped
execute as @e[tag=wantstodrop,tag=crate,tag=dropped] run scoreboard players set @s age 0
execute as @e[tag=wantstodrop,tag=crate,tag=dropped] run data merge entity @s {NoGravity:0b}
execute as @e[tag=wantstodrop,tag=crate,tag=dropped] run tag @s remove wantstodrop

# Make copters fly away if they are above terracotta
execute as @e[tag=wantstodrop,tag=supplycrate,tag=!crateless] at @s if block ~ 0 ~ minecraft:purple_glazed_terracotta run tag @s add crateless
execute as @e[tag=wantstodrop,tag=supplycrate,tag=crateless] run tag @s remove wantstodrop