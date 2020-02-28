# Make sure we have scores in the board
scoreboard players add song0 song 0

# Notes of the song
# Winners
execute if score song0 song matches 0 as @a[tag=won0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score song0 song matches 1 as @a[tag=won0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.1
execute if score song0 song matches 2 as @a[tag=won0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score song0 song matches 3 as @a[tag=won0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.3

# Losers
execute if score song0 song matches 0 as @a[tag=lost0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.8
execute if score song0 song matches 1 as @a[tag=lost0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.5
execute if score song0 song matches 2 as @a[tag=lost0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.7
execute if score song0 song matches 3 as @a[tag=lost0] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.5

# Keep the song going if we haven't had all notes yet
execute if score song0 song matches ..3 run scoreboard players add song0 song 1
execute if score song0 song matches ..3 run schedule function crossfire:song0 8t

# Reset song for next loop
execute if score song0 song matches 4.. run tag @a[tag=won0] remove won0
execute if score song0 song matches 4.. run tag @a[tag=lost0] remove lost0
execute if score song0 song matches 4.. run scoreboard players set song0 song 0