# For any dropped item make it get picked up if someone gets nearby
# Only allow collecting by players in active games
execute if score started0 started matches 1 as @e[tag=drop,tag=0] at @s if entity @a[tag=selected0,tag=freeslot,distance=..1] run function crossfire:generated/collect_powerup2
execute if score started1 started matches 1 as @e[tag=drop,tag=1] at @s if entity @a[tag=selected1,tag=freeslot,distance=..1] run function crossfire:generated/collect_powerup2