# For any dropped item make it get picked up if someone gets nearby
# Only allow collecting by players in active games
execute if score started0 started matches 1 as @e[tag=drop] at @s if entity @a[tag=selected0,distance=..1] run function crossfire:collect_powerup2
execute if score started1 started matches 1 as @e[tag=drop] at @s if entity @a[tag=selected1,distance=..1] run function crossfire:collect_powerup2