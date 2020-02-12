# Give proper player shooter tags
data modify entity @e[type=arrow,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!magenta,tag=!orange,limit=1] Tags set from entity @s Tags

# Give the arrows tags from the player that shot them
execute if entity @s[team=red] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!orange,tag=!magenta] add red
execute if entity @s[team=yellow] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!orange,tag=!magenta] add yellow
execute if entity @s[team=green] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!orange,tag=!magenta] add green
execute if entity @s[team=blue] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!orange,tag=!magenta] add blue
execute if entity @s[team=orange] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!orange,tag=!magenta] add orange
execute if entity @s[team=magenta] at @s run tag @e[type=arrow,distance=..4,tag=!red,tag=!green,tag=!yellow,tag=!blue,tag=!orange,tag=!magenta] add magenta


# Play the bow shooting sounds
execute at @s run playsound minecraft:item.trident.hit_ground ambient @a ~ ~ ~ 10 0
execute at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 10 1.0