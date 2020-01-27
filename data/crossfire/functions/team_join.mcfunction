execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green,tag=!admin] run title @s times 10 40 10
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green,tag=!admin] run title @s subtitle ["",{"text":"Joined team "},{"text":"green","bold":true,"color":"green"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green,tag=!admin] run title @s title {"text":"\uE000"}
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green,tag=!admin] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green,tag=!admin] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_concrete if entity @s[team=!green,tag=!admin] run team join green @s

execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red,tag=!admin] run title @s times 10 40 10
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red,tag=!admin] run title @s subtitle ["",{"text":"Joined team "},{"text":"red","bold":true,"color":"red"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red,tag=!admin] run title @s title {"text":"\uE003"}
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red,tag=!admin] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red,tag=!admin] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:red_concrete if entity @s[team=!red,tag=!admin] run team join red @s

execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow,tag=!admin] run title @s times 10 40 10
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow,tag=!admin] run title @s subtitle ["",{"text":"Joined team "},{"text":"yellow","bold":true,"color":"yellow"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow,tag=!admin] run title @s title {"text":"\uE001"}
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow,tag=!admin] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow,tag=!admin] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_concrete if entity @s[team=!yellow,tag=!admin] run team join yellow @s

execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue,tag=!admin] run title @s times 10 40 10
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue,tag=!admin] run title @s subtitle ["",{"text":"Joined team "},{"text":"blue","bold":true,"color":"aqua"}]
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue,tag=!admin] run title @s title {"text":"\uE002"}
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue,tag=!admin] if entity @s[tag=!joined] run scoreboard players add joined joined 1
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue,tag=!admin] run tag @s add joined
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_concrete if entity @s[team=!blue,tag=!admin] run team join blue @s