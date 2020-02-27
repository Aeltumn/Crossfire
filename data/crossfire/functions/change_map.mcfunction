# Switch your map value
execute as @s[scores={map=0}] run scoreboard players set @s map 1
execute as @s[scores={map=1}] run scoreboard players set @s map 0

# Reset player
function crossfire:reset_player