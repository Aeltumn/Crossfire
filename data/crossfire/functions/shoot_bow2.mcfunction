# Give proper player shooter tags
execute as @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue] run data modify entity @s Tags set from entity @p[tag=!spectating] Tags

# Give the arrows tags from the player that shot them
execute if entity @s[team=red] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue] add red
execute if entity @s[team=yellow] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue] add yellow
execute if entity @s[team=green] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue] add green
execute if entity @s[team=blue] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue] add blue

# Play the bow shooting sounds
execute at @s run playsound minecraft:item.trident.hit_ground ambient @a ~ ~ ~ 10 0
execute at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 10 1.0