# Rotate flight path entities
execute as @e[tag=flightpath5] at @s run tp @s ~ ~ ~ ~0.05 -10

# Make copters fly
execute as @e[tag=supplycrate,tag=!crateless] at @s run tp @s ^ ^ ^0.2 ~2 ~
execute as @e[tag=crate,tag=!dropped] at @s run tp @s ^ ^ ^0.2 ~2 ~
# If crateless make copter fly up
execute as @e[tag=crateless] at @s run tp @s ~ ~0.2 ~

# Kill crateless copters above y 75
execute as @e[tag=crateless] at @s if entity @s[y=75,dy=1000] run kill @s