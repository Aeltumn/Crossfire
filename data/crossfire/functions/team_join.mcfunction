execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green] run title @s title {"text":"\uE000"}
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green] run tellraw @s ["",{"text":"You joined team: "},{"text":"Green","color":"green"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green] run team join green @s

execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red] run title @s title {"text":"\uE003"}
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red] run tellraw @s ["",{"text":"You joined team: "},{"text":"Red","color":"red"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red] run team join red @s

execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow] run title @s title {"text":"\uE001"}
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow] run tellraw @s ["",{"text":"You joined team: "},{"text":"Yellow","color":"yellow"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow] run team join yellow @s

execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue] run title @s title {"text":"\uE002"}
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue] run tellraw @s ["",{"text":"You joined team: "},{"text":"Blue","color":"aqua"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue] run team join blue @s