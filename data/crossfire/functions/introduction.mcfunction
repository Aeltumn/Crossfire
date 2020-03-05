# Start intro
execute as @a if score @s intro matches 0 run scoreboard players set @s map -1

# Increase intro value
scoreboard players add @a[scores={intro=0..}] intro 1

# Send messages depending on the intro state
execute as @a if score @s intro matches 1 run tellraw @s {"text":"had je verwacht dat ik al iets had gedaan Jelle? lol"}

# Reset intro to -1 at the end by restting the player
execute as @a if score @s intro matches 5 run scoreboard players set @s map 0
execute as @a if score @s intro matches 5 run function crossfire:reset_player

# Rerun this function
schedule function crossfire:team_deny_info 1s replace