# Start intro
execute as @a if score @s intro matches 0 run scoreboard players set @s map -1

# Increase intro value
scoreboard players add @a[scores={intro=0..}] intro 1

# Send messages depending on the intro state
# PHASE 1 - Lobby
execute as @a if score @s intro matches 1 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 1 run tellraw @s ["",{"text":"Welcome to "},{"text":"Crossfire","color":"gold"},{"text":"! A team vs team minigame where you try to hit your friends with fireworks shot from a crossbow."}]
execute as @a if score @s intro matches 1 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 12 run tellraw @s ["",{"text":"Crossfire","color":"gold"},{"text":" can be played on two maps: "},{"text":"Party","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"A map where four teams play together at once: "},{"text":"Red","color":"red"},{"text":", "},{"text":"Yellow","color":"yellow"},{"text":", "},{"text":"Green","color":"green"},{"text":" and "},{"text":"Blue","color":"aqua"},{"text":". The map is more focussed towards finding out the position of your enemies than direct confrontation."}]}},{"text":" or "},{"text":"Duel","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"The duel map is played on by only two teams, "},{"text":"Orange","color":"gold"},{"text":" and "},{"text":"Magenta","color":"light_purple"},{"text":". The map is focussed on trying to evade incoming attacks whilst trying to attack yourself. The map is very open so spotting the enemy won't be hard."}]}},{"text":". The maps have different amounts of participating teams and each offer a different experience. Both maps can be played on simultaneously."}]
execute as @a if score @s intro matches 12 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 22 run tellraw @s ["",{"text":"During the game you'll receive your main weapon: "},{"text":"the crossbow","color":"dark_purple"},{"text":". It will automatically reload but only when you're holding the crossbow in your hand."}]
execute as @a if score @s intro matches 22 run tellraw @s [{"text":""}]

# PHASE 2 - Shooting Rnange
execute as @a if score @s intro matches 31 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 31 run tellraw @s ["",{"text":"Here's "},{"text":"the shooting range","color":"gold"},{"text":", here you can practice your aim with the crossbow before the game starts."}]
execute as @a if score @s intro matches 31 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 38 run tellraw @s ["",{"text":"Whenever you use "},{"text":"the crossbow","color":"dark_purple"},{"text":" a "},{"text":"fireworks rocket","color":"light_purple"},{"text":" will be shot out. This rocket will explode as soon as it hits something."}]
execute as @a if score @s intro matches 38 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 47 run tellraw @s ["",{"text":"When a player gets hit by "},{"text":"fireworks","color":"light_purple"},{"text":" they'll be 'sploded and shoot up into the skies above. They'll respawn again after a few seconds."}]
execute as @a if score @s intro matches 47 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 56 run tellraw @s ["",{"text":"After a player respawns they'll have "},{"text":"5 seconds","color":"gold"},{"text":" of invulnerability during which they cannot be 'sploded."}]
execute as @a if score @s intro matches 56 run tellraw @s [{"text":""}]

# PHASE 3 - Game
execute as @a if score @s intro matches 65 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 65 run tellraw @s ["",{"text":"During the game there will sometimes be some "},{"text":"loot crates","color":"gold"},{"text":" that will spawn in the skies. If they are hit with fireworks before they leave they will fall down and drop their contents. "},{"text":"These crates contain powerful powerups that can change the tide of battle.","color":"red"},{"text":" But you'll have to find out what the powerups do yourself."}]
execute as @a if score @s intro matches 65 run tellraw @s [{"text":""}]
execute as @a if score @s intro matches 79 run tellraw @s ["",{"text":"The team that gets the most points will win in the end."},{"text":" You get one point for every kill,","color":"red"},{"text":" but lose a point every time you fall into the water.","color":"aqua"}]
execute as @a if score @s intro matches 79 run tellraw @s [{"text":""}]

# Reset intro to -1 at the end by restting the player
execute as @a if score @s intro matches 88 run scoreboard players set @s map 0
execute as @a if score @s intro matches 88 run function crossfire:reset_player

# Rerun this function
schedule function crossfire:introduction 1s replace