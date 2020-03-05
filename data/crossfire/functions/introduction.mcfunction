# Start intro
execute as @a if score @s intro matches 0 run scoreboard players set @s map -1

# Increase intro value
scoreboard players add @a[scores={intro=0..}] intro 1

# Send messages depending on the intro state
# PHASE 1 - LOBBY
execute as @a if score @s intro matches 1 run spectate @e[tag=camera0,limit=1] @s
execute as @a if score @s intro matches 4 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 4 run tellraw @s ["",{"text":"Welcome to "},{"text":"Crossfire","color":"gold"},{"text":"!"}]
execute as @a if score @s intro matches 4 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 8 run tellraw @s ["",{"text":"Crossfire","color":"gold"},{"text":" can be played on two maps: "},{"text":"Party","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"A map where four teams play together at once: "},{"text":"Red","color":"red"},{"text":", "},{"text":"Yellow","color":"yellow"},{"text":", "},{"text":"Green","color":"green"},{"text":" and "},{"text":"Blue","color":"aqua"},{"text":". The map is more focussed towards finding out the position of your enemies than direct confrontation."}]}},{"text":" or "},{"text":"Duel","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"The duel map is played on by only two teams, "},{"text":"Orange","color":"gold"},{"text":" and "},{"text":"Magenta","color":"light_purple"},{"text":". The map is focussed on trying to evade incoming attacks whilst trying to attack yourself. The map is very open so spotting the enemy won't be hard."}]}},{"text":". The maps have different amounts of participating teams and each offer a different experience. Both maps can be played on simultaneously."}]
execute as @a if score @s intro matches 8 run tellraw @s [{"text":""}]

# PHASE 2 - Shooting Rnange
execute as @a if score @s intro matches 40 run spectate @e[tag=camera1,limit=1] @s
execute as @a if score @s intro matches 43 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 43 run tellraw @s ["",{"text":"Here's "},{"text":"the shooting range","color":"gold"},{"text":", here you can practice your aim before the game starts."}]
execute as @a if score @s intro matches 43 run tellraw @s [{"text":""}]

# PHASE 3 - Game
execute as @a if score @s intro matches 90 run spectate @e[tag=camera2,limit=1] @s

# Reset intro to -1 at the end by restting the player
execute as @a if score @s intro matches 120 run scoreboard players set @s map 0
execute as @a if score @s intro matches 120 run function crossfire:reset_player

# Rerun this function
schedule function crossfire:introduction 1s replace