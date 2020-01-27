# Give proper team
execute if entity @s[tag=player1] at @s run tag @e[type=arrow,distance=..4,limit=1] add player1
execute if entity @s[tag=player2] at @s run tag @e[type=arrow,distance=..4,limit=2] add player2
execute if entity @s[tag=player3] at @s run tag @e[type=arrow,distance=..4,limit=3] add player3
execute if entity @s[tag=player4] at @s run tag @e[type=arrow,distance=..4,limit=4] add player4
execute if entity @s[tag=player5] at @s run tag @e[type=arrow,distance=..4,limit=5] add player5
execute if entity @s[tag=player6] at @s run tag @e[type=arrow,distance=..4,limit=6] add player6
execute if entity @s[tag=player7] at @s run tag @e[type=arrow,distance=..4,limit=7] add player7
execute if entity @s[tag=player8] at @s run tag @e[type=arrow,distance=..4,limit=8] add player8
execute if entity @s[tag=player9] at @s run tag @e[type=arrow,distance=..4,limit=9] add player9
execute if entity @s[tag=player10] at @s run tag @e[type=arrow,distance=..4,limit=10] add player10
execute if entity @s[tag=player11] at @s run tag @e[type=arrow,distance=..4,limit=11] add player11

execute if entity @s[team=red] at @s run tag @e[type=arrow,distance=..4,limit=1] add red
execute if entity @s[team=yellow] at @s run tag @e[type=arrow,distance=..4,limit=1] add yellow
execute if entity @s[team=green] at @s run tag @e[type=arrow,distance=..4,limit=1] add green
execute if entity @s[team=blue] at @s run tag @e[type=arrow,distance=..4,limit=1] add blue

execute at @s run playsound minecraft:item.trident.hit_ground ambient @a ~ ~ ~ 10 0
execute at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 10 1.0