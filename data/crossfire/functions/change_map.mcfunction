# Switch your map value, we set to 2 to prevent it getting set back
execute as @s[scores={map=0}] run scoreboard players set @s map 2
execute as @s[scores={map=1}] run scoreboard players set @s map 0
execute as @s[scores={map=2}] run scoreboard players set @s map 1

# Reset player
function crossfire:reset_player