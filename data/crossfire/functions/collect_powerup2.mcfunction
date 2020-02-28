# Make it clear that a power up was collected
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0.5
tellraw @a ["",{"text":"A powerup was picked up, watch out!"}]

# Destroy the drop
kill @e[tag=drop,distance=..1,limit=1]

# Give the drop to the nearest player
