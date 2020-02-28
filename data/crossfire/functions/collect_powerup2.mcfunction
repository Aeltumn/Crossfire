# Make it clear that a power up was collected
execute if entity @s[tag=0] run playsound minecraft:block.note_block.chime master @a[scores={map=0}] ~ ~ ~ 1 0.5
execute if entity @s[tag=1] run playsound minecraft:block.note_block.chime master @a[scores={map=1}] ~ ~ ~ 1 0.5
execute if entity @s[tag=0] run tellraw @a[scores={map=0}] ["",{"text":"A powerup was picked up, watch out!"}]
execute if entity @s[tag=1] run tellraw @a[scores={map=1}] ["",{"text":"A powerup was picked up, watch out!"}]

# Destroy the drop
kill @e[tag=drop,distance=..1,limit=1]

# Give the drop to the nearest player
