# Notes of the song
# Winners
execute if score song1 song matches 0 run as @a[tag=won1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score song1 song matches 1 run as @a[tag=won1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.1
execute if score song1 song matches 2 run as @a[tag=won1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score song1 song matches 3 run as @a[tag=won1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.3

# Losers
execute if score song1 song matches 0 run as @a[tag=lost1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.8
execute if score song1 song matches 1 run as @a[tag=lost1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.5
execute if score song1 song matches 2 run as @a[tag=lost1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.7
execute if score song1 song matches 3 run as @a[tag=lost1] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.5

# Keep the song going if we haven't had all notes yet
execute if score song1 song matches ..3 scoreboard players add song1 song 1
execute if score song1 song matches ..3 run schedule function crossfire:song1 1s

# Reset song for next loop
execute if score song1 song matches 4.. run tag @a[tag=won1] remove won1
execute if score song1 song matches 4.. run tag @a[tag=lost1] remove lost1
execute if score song1 song matches 4.. run scoreboard players set song1 song 0