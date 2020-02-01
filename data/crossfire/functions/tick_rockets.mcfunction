# Add age to arrows so we kill them if they exist for too long
scoreboard players add @e[type=arrow] age 1

# Add particle to flying arrows
execute as @e[tag=!dead,type=arrow] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.03 2

# Add cloud particles when player is levitating upward after being sploded
execute as @a[tag=died,tag=!waterdead,tag=!spectating] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.3 0.1 0 3

# Remove illegal items (mostly the landed rockets)
clear @a[tag=!admin] #crossfire:illegalitems

# Trigger a hit for each team if the hit player isn't of the same team and not spectating
execute as @e[tag=!dead,type=arrow,tag=green] at @s if entity @e[type=player,distance=..2.5,team=!green,tag=!died,tag=!spectating,tag=selected] run function crossfire:generated/hit
execute as @e[tag=!dead,type=arrow,tag=red] at @s if entity @e[type=player,distance=..2.5,team=!red,tag=!died,tag=!spectating,tag=selected] run function crossfire:generated/hit
execute as @e[tag=!dead,type=arrow,tag=yellow] at @s if entity @e[type=player,distance=..2.5,team=!yellow,tag=!died,tag=!spectating,tag=selected] run function crossfire:generated/hit
execute as @e[tag=!dead,type=arrow,tag=blue] at @s if entity @e[type=player,distance=..2.5,team=!blue,tag=!died,tag=!spectating,tag=selected] run function crossfire:generated/hit

# Trigger hits if the arrow hits the ground or the arrow is too old
execute as @e[tag=!dead,type=minecraft:arrow,nbt={inGround:1b}] at @s run function crossfire:generated/hit
execute as @e[tag=!dead,type=minecraft:arrow] if entity @s[scores={age=15..}] at @s run function crossfire:generated/hit