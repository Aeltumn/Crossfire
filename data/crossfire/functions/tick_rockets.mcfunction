scoreboard players add @e[type=arrow] age 1
execute as @e[tag=!dead,type=arrow] at @s run particle minecraft:firework ^ ^ ^ 0 0 0 0.03 1
execute as @e[tag=!dead,type=arrow] at @s run particle minecraft:firework ^ ^ ^1 0 0 0 0.03 1

execute as @e[tag=!dead,type=arrow,tag=green] at @s if entity @e[type=player,distance=..3,team=!green,gamemode=!spectator] run function crossfire:hit
execute as @e[tag=!dead,type=arrow,tag=red] at @s if entity @e[type=player,distance=..3,team=!red,gamemode=!spectator] run function crossfire:hit
execute as @e[tag=!dead,type=arrow,tag=yellow] at @s if entity @e[type=player,distance=..3,team=!yellow,gamemode=!spectator] run function crossfire:hit
execute as @e[tag=!dead,type=arrow,tag=blue] at @s if entity @e[type=player,distance=..3,team=!blue,gamemode=!spectator] run function crossfire:hit

execute as @e[tag=!dead,type=minecraft:arrow,nbt={inGround:1b}] at @s run function crossfire:hit
execute as @e[tag=!dead,type=minecraft:arrow] if entity @s[scores={age=15..}] at @s run function crossfire:hit