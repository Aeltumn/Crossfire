# Switch your map value
execute as @a[scores={map=0}] run scoreboard players set @s map 1
execute as @a[scores={map=1}] run scoreboard players set @s map 0

# Reset player
function crossfire:reset_player