# For any dropped item make it get picked up if someone gets nearby
execute as @e[tag=drop] at @s if entity @a[distance=..1] run function crossfire:collect_powerup2