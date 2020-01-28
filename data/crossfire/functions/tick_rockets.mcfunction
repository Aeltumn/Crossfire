scoreboard players add @e[type=arrow] age 1
execute as @e[tag=!dead,type=arrow] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.03 2

execute as @e[tag=!dead,type=arrow,tag=green] at @s if entity @e[type=player,distance=..2.5,team=!green,tag=!died,tag=!spectating] run function crossfire:hit
execute as @e[tag=!dead,type=arrow,tag=red] at @s if entity @e[type=player,distance=..2.5,team=!red,tag=!died,tag=!spectating] run function crossfire:hit
execute as @e[tag=!dead,type=arrow,tag=yellow] at @s if entity @e[type=player,distance=..2.5,team=!yellow,tag=!died,tag=!spectating] run function crossfire:hit
execute as @e[tag=!dead,type=arrow,tag=blue] at @s if entity @e[type=player,distance=..2.5,team=!blue,tag=!died,tag=!spectating] run function crossfire:hit

execute as @e[tag=!dead,type=minecraft:arrow,nbt={inGround:1b}] at @s run function crossfire:hit
execute as @e[tag=!dead,type=minecraft:arrow] if entity @s[scores={age=15..}] at @s run function crossfire:hit